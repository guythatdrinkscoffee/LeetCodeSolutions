/* Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root). */
func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else {
        return []
    }
    
    var out = [[Int]]()
    var Q = [TreeNode]()
    var count = 0
    
    Q.insert(root, at: 0)
    
    while !Q.isEmpty {
        count = Q.count 
        var level = [Int]()
        
        while count > 0 {
            let current = Q.popLast()
        
            level.append(current!.val)
            
            if let left = current?.left {
                Q.insert(left, at:0)
            }
            
            if let right = current?.right {
                Q.insert(right, at:0)
            }
            
            count -= 1
        }
        
        out.insert(level, at:0)
    }
    
    return out
}