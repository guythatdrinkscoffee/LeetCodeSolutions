/* Given a binary tree, return the preorder traversal of its nodes' values. */
func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var nodeStack = [TreeNode]()
    var out = [Int]()
    var currentNode = root 

    while currentNode != nil || !nodeStack.isEmpty{
        while currentNode != nil {
            out.append(currentNode!.val)
            nodeStack.append(currentNode!)
            currentNode = currentNode?.left
        }    
        
        currentNode = nodeStack.popLast()
        currentNode = currentNode?.right
    }   

    return out
}