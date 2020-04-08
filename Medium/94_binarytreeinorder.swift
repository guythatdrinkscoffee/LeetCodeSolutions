/* Given a binary tree, return the inorder traversal of its nodes' values.*/
func inorderTraversal(_ root: TreeNode?) -> [Int]{
    var nodeStack = [TreeNode]()
    var out = [Int]()
    var currentNode = root 
    
    while currentNode != nil || !nodeStack.isEmpty {
        while currentNode != nil {
            nodeStack.append(currentNode!)
            currentNode = currentNode?.left
        }
        
        currentNode = nodeStack.popLast()
        out.append(currentNode!.val)
        currentNode = currentNode?.right
    }

    return out
}
