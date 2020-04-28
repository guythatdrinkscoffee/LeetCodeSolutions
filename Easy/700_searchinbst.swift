/* Given the root node of a binary search tree (BST) and a value. 
You need to find the node in the BST that the node's value equals 
the given value. Return the subtree rooted with that node. If such 
node doesn't exist, you should return NULL. */
func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    //ITERATIVE 
    // var nodeStack = [TreeNode]()
    // var currentNode = root 
    // var subTreeRoot: TreeNode?
    
    // nodeStack.append(currentNode!)
    // while !nodeStack.isEmpty{
    //     currentNode = nodeStack.popLast()
    //     if currentNode!.val == val {
    //         subTreeRoot = currentNode
    //         return subTreeRoot
    //     }
        
    //     if val < currentNode!.val && currentNode?.left != nil {
    //         nodeStack.append((currentNode!.left!))
    //     } else if val > currentNode!.val && currentNode?.right != nil {
    //         nodeStack.append((currentNode!.right!))
    //     }
    // }
    
    // return nil

    //RECURSIVE
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        if root.val == val {
            return root
        }else if val < root.val {
            return searchBST(root.left, val)
        }
        
        return searchBST(root.right,val)
    }

}