/* Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array. */
func averageOfLevels(_ root: TreeNode?) -> [Double] {
    guard let root = root else {
        return []
    }
    
    var out = [Double]()
    var Q = [TreeNode]()
    var count = 0
    
    Q.insert(root, at:0)
    
    while !Q.isEmpty {
        count = Q.count
        var average : Double = 0.0
        for n in Q { average += Double(n.val) }
        out.append( average / Double(count))
        
        while count > 0 {
            let curr = Q.popLast()
            
            if let left = curr?.left {
                Q.insert(left, at:0)
            }
            
            if let right = curr?.right {
                Q.insert(right, at:0)
            }
            
            count -= 1
        }
    }
    
    return out
}