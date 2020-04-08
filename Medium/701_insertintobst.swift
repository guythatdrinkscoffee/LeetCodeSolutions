/* Given the root node of a binary search tree (BST) and a value to be inserted into 
the tree, insert the value into the BST. Return the root node of the BST after 
the insertion. It is guaranteed that the new value does not exist in the original BST.
Note that there may exist multiple valid ways for the insertion, as long as the tree 
remains a BST after insertion. You can return any of them. */
func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    var nodeStack = [TreeNode]()
    var treeRoot = root 
    var currentNode = root
    
    while currentNode != nil || !nodeStack.isEmpty {
        while currentNode != nil {
            nodeStack.append(currentNode!)
            if val < currentNode!.val {
                currentNode = currentNode?.left
            } else {
                currentNode = currentNode?.right
            }
        }
        
        currentNode = nodeStack.popLast()
        
        if val < currentNode!.val && currentNode?.left == nil{
            currentNode?.left = TreeNode(val)
            break
        }else if val > currentNode!.val && currentNode?.right == nil{
            currentNode?.right = TreeNode(val)
            break
        }
    }
    
    return treeRoot
}