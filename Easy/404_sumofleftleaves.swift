/* Find the sum of all left leaves in a given binary tree */
func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0 
    }
    
    var S = [TreeNode]()
    var sum = 0
    var curr = root 
    
    while !S.isEmpty || curr != nil {
        while curr != nil {
            S.append(curr!)
            
            if let leftChild = curr?.left{
                if leftChild.left == nil && leftChild.right == nil {
                        sum += leftChild.val
                }
            }
            
            curr = curr?.left 
        }
        
        curr = S.popLast()
        curr = curr?.right
    }
    
    return sum 
}