/* Invert a binary tree. */
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else {
        return nil 
    }

    var Q = [TreeNode]()
    Q.insert(root, at: 0)
    
    while !Q.isEmpty {
        var count = Q.count 
        
        while count > 0 {
            var current = Q.removeLast()
            
            var temp: TreeNode? = current.right
            current.right = current.left
            current.left = temp
            
            if let left = current.left {
                Q.insert(left,at:0)
            }
            
            if let right = current.right {
                Q.insert(right,at:0)
            }
            
            count -= 1
        }
    }
    
    return root
}