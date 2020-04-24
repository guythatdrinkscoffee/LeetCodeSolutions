/* Given a binary tree, find the leftmost value in the last row of the tree. */
func findBottomLeftValue(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    var Q = [TreeNode]()
    var level = [ Int: [Int]]()
    var count = 0
    var lvl = 0
    
    Q.insert(root, at: 0)
    
    while !Q.isEmpty {
        count = Q.count 
        lvl += 1
        
        while count > 0 {
            let curr = Q.popLast()
            
            if let left = curr?.left{
                Q.insert(left, at: 0)
                level[lvl] = (level[lvl] ?? []) + [left.val]
            } else if let right = curr?.right{
                level[lvl] = (level[lvl] ?? []) + [right.val]
            }
            
            if let right = curr?.right{
                Q.insert(right, at: 0)
            }
            
            count -= 1
        }
    }
    
    return level[lvl-1]?.first ?? root.val
}