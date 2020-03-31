/* Given a binary tree, return the inorder traversal of its nodes' values.*/
func inorderTraversal(_ root: TreeNode?) -> [Int]{
    var nodeStack = [TreeNode]()
    var out = [Int]()
    var curr = root 
    
    while curr != nil || !nodeStack.isEmpty {
        while curr != nil {
            nodeStack.append(curr!)
            curr = curr?.left
        }

        curr = nodeStack.popLast()
        out.append(curr!.val)

        curr = curr?.right
    }

    return out
}