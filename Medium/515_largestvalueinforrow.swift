/* You need to find the largest value in each row of a binary tree. */    
func largestValues(_ root: TreeNode?) -> [Int] {
    guard let root = root else {
        return []
    }
    
    var Q = [TreeNode]()
    var levelHighest = [Int]()
    var count = 0 
    
    Q.insert(root, at: 0)
    
    while !Q.isEmpty{
        count = Q.count
        var maxElem = Int.min
        
        while count > 0{
            let current = Q.popLast()
            
            maxElem = max(maxElem,current!.val)
            if let left = current?.left{
                Q.insert(left, at:0)
            }
            
            if let right = current?.right{
                Q.insert(right, at:0)
            }
            
            count -= 1
        }
        
        levelHighest.append(maxElem)
    }
    
    return levelHighest
}