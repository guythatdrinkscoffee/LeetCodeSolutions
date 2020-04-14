/* Given an n-ary tree, return the level order traversal of its nodes' values. */
func levelOrder(_ root: Node?) -> [[Int]] {
    guard let root = root else {
        return []
    }
    
    var Queue  = [Node]()
    var out = [[Int]]()
    var count = 0 
    
    Queue.insert(root, at: 0)
    
    while !Queue.isEmpty{
        var currentLvl = [Int]()
        var count = Queue.count
        
        while count > 0{
            let currentNode = Queue.removeLast()
            currentLvl.append(currentNode.val)
            
            for child in currentNode.children{
                Queue.insert(child, at: 0)
            }
            
            count -= 1
        }
        
        out.append(currentLvl)
    }
    
    return out
}