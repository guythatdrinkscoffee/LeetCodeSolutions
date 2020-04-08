/* Given the root node of a binary search tree, return the sum of values of all nodes with value 
between L and R (inclusive). */
func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    var nodeStack = [TreeNode]()
    var rangeSum = 0
    var currentNode = root
    
    while currentNode != nil || !nodeStack.isEmpty {
        while currentNode != nil {
            nodeStack.append(currentNode!)
            currentNode = currentNode?.left
        }
        
        currentNode = nodeStack.popLast()
        if let value = currentNode?.val {
            if value >= L && value <= R{
                rangeSum += value
            }
        }
        
        currentNode = currentNode?.right
        
    }

    return rangeSum
}