/* Given a binary tree, return the postorder traversal of its nodes' values. */
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var out = [Int]()
    var nodeStack = [TreeNode]()
    var currentNode = root

    while currentNode != nil || !nodeStack.isEmpty {
        while currentNode != nil {
            if let rightChild = currentNode?.right {
                nodeStack.append(rightChild)
            }
            nodeStack.append(currentNode!)
            currentNode = currentNode?.left
        }

        if let current = nodeStack.popLast(){
            if  current.right != nil && nodeStack.last?.val == current.right?.val {
                nodeStack.popLast()
                nodeStack.append(current)
                currentNode = current.right
            } else {
                out.append(current.val)
                currentNode = nil 
            }
        }
        
    }
    
    return out 
}