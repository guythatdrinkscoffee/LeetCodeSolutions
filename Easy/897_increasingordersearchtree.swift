/* Given a binary search tree, rearrange the tree in in-order so that the leftmost node in the tree is now the root of the tree
and every node has no left child and only 1 right child. */
func increasingBST(_ root: TreeNode?) -> TreeNode? {
    if root == nil { 
        return nil
    }
    
    var S = [TreeNode]()
    var inOrder = [TreeNode]()
    var curr = root
    
    while !S.isEmpty || curr != nil {
        while curr != nil {
            S.append(curr!)
            curr = curr?.left
        }
        
        curr = S.popLast()
        
        if let c = curr {
            inOrder.append(c)
        }
        
        curr = curr?.right
    }
    
    for i in 0..<inOrder.count-1 {
        inOrder[i].right = inOrder[i + 1]
        inOrder[i].left = nil 
    }
    
    return inOrder.first ?? nil
}