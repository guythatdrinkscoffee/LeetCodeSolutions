/* Given a binary tree, determine if it is a valid binary search tree (BST). */
func isValidBST(_ root: TreeNode?) -> Bool {
    return validSubTree(root, nil, nil)
}

func validSubTree(_ subTreeRoot: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
    guard let subTreeRoot = subTreeRoot else {
        return true
    }

    if let min = min, subTreeRoot.val <= min {
        return false
    } else if let max = max, subTreeRoot.val >= max {
        return false
    }

    return validSubTree(subTreeRoot.left, min, subTreeRoot.val) && validSubTree(subTreeRoot.right,subTreeRoot.val, max)
}