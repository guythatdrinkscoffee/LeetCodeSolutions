/* Given a binary tree, return the sum of values of its deepest leaves. */
func deepestLeavesSum(_ root: TreeNode?) -> Int {
    var depth = 0 
    var queue = [TreeNode]()
    var count = 0
    var sum = 0
    
    if let treeNode = root {
        depth = maxDepth(treeNode)
        queue.insert(treeNode, at: 0)
    }
    
    
    while !queue.isEmpty {
        count = queue.count 
        
        while count > 0 {
            var currentNode = queue.popLast()
            
            if depth == 1 {
                sum += currentNode!.val
            }
            
            if let left = currentNode?.left {
                queue.insert(left, at: 0)
            }
            
            if let right = currentNode?.right {
                queue.insert(right, at: 0)
            }
            
            count -= 1     
        }
    
        depth -= 1
    }
    
    return sum 
}

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    
    return 1 + max(maxDepth(root?.left), maxDepth(root?.right ))
}