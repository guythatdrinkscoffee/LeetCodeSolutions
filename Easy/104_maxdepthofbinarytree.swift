/* Given a binary tree, find its maximum depth.
The maximum depth is the number of nodes along the longest path from the root node down 
to the farthest leaf node.
 */
func maxDepth(_ root: TreeNode?) -> Int {
    //base case 
    guard let root = root else {
        return 0
    }

    return 1 + max(maxDepth(root.left),maxDepth(root.right))
}