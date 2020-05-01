/* Return the root node of a binary search tree that matches the given preorder traversal. */
func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
    var i : Int = 0
    return construct(preorder, &i , Int.max)
}

func construct( _ arr: [Int], _ i: inout Int , _ max: Int) -> TreeNode? {
    if i > arr.count - 1 || arr[i] > max {
        return nil
    }
    
    let root = TreeNode(arr[i])
    i += 1
    root.left = construct(arr, &i, root.val)
    root.right = construct(arr, &i, max)
    return root 
}