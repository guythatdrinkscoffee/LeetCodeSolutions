/* Given a binary tree, return the currentLevel order traversal of its nodes' values. (ie, from left to right, currentLevel by currentLevel). */
func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var queue = [TreeNode]()
    var levelOrder = [[Int]]()
    var count = 0

    if let treeRoot = root {
        queue.insert(treeRoot,at: 0)
    }
    
    while !queue.isEmpty {
        count = queue.count 
        var currentLevel = [Int]()
        
        while count > 0 {
            var currentNode = queue.popLast() 
            currentLevel.append(currentNode!.val)
            
            if let left = currentNode?.left {
                queue.insert(left,at: 0)
            }
            
            if let right = currentNode?.right {
                queue.insert(right,at: 0)
            }
            
            count -= 1
        }
        
        levelOrder.append(currentLevel)
    }
    
    return levelOrder
}