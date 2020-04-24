/* Given the root of a binary tree, the level of its root is 1, the level of its children is 2, and so on.
Return the smallest level X such that the sum of all the values of nodes at level X is maximal. */
func maxLevelSum(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    
    var level = [Int: Int]()
    var Q = [TreeNode]()
    var currLevel = 1
    var count = 0
    
    Q.insert(root, at: 0)
    
    while !Q.isEmpty {
        count = Q.count 
        
        while count > 0 {
            var currentNode = Q.removeLast() 
            
            level[currLevel] = (level[currLevel] ?? 0) + currentNode.val
            
            if let left = currentNode.left {
                Q.insert(left,at: 0)
            }
            
            if let right = currentNode.right {
                Q.insert(right,at: 0)
            }
            
            count -= 1
        }

        currLevel += 1
    }
    
    let maxLevelSum = level.max {a,b in a.value < b.value}
    
    return maxLevelSum!.key ?? 0
}