/* Given the root of a binary tree, then value v and depth d, you need to add a row of nodes with value v at the given depth d. The root node is at depth 1. */
func addOneRow(_ root: TreeNode?, _ v: Int, _ d: Int) -> TreeNode? {
    guard let root = root else {
        return nil 
    }

    var Q = [TreeNode]()
    var count = 0
    var lvl = 0
    
    if d == 1 {
        let newRoot = TreeNode(v)
        newRoot.left = root
        return newRoot
    }
    
    Q.insert(root, at:0)
    
    while !Q.isEmpty {
        count = Q.count 
        lvl +=  1
    
        while count > 0 {
            let curr = Q.popLast()
            
            if lvl == d - 1 {
                if let left = curr?.left  {
                    let t = left 
                    curr!.left = TreeNode(v)
                    curr!.left!.left = t
                } else {
                    curr?.left = TreeNode(v)
                }
                
                if let right = curr?.right {
                    let t = right
                    curr!.right = TreeNode(v)
                    curr!.right!.right = t                        
                } else {
                    curr?.right = TreeNode(v)
                }
                
            } else {
                if let left = curr?.left {
                    Q.insert(left, at:0)
                }
                
                if let right = curr?.right {
                    Q.insert(right, at:0)
                }
            }
            count -= 1 
        }
    }
    
    
    return root
}