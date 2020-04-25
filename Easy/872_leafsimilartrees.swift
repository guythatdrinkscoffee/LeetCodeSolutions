/* Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
Two binary trees are considered leaf-similar if their leaf value sequence is the same.
Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.
*/
func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    guard let root1 = root1, let root2 = root2 else { 
        return false 
    }
    
    return getLeaves(root1) == getLeaves(root2)
}

func getLeaves(_ root: TreeNode?) -> [Int] { 
    var S = [TreeNode]()
    var leaves = [Int]()
    var curr = root 
    
    while !S.isEmpty || curr != nil {
        while curr != nil {
            S.append(curr!)
            curr = curr?.left
        }
        
        curr = S.popLast()
        
        if curr?.left == nil && curr?.right == nil {
            leaves.append(curr!.val)
        }
        
        curr = curr?.right
    }
    
    return leaves 
}