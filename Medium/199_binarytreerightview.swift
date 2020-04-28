/* Given a binary tree, imagine yourself standing on the right side of it, return the values of 
    the nodes you can see ordered from top to bottom. */

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root = root else {
        return []
    }
    
    var Q = [TreeNode]()
    var ans = [Int]()

    Q.insert(root, at:0)
    
    while !Q.isEmpty {
        if let rightMost = Q.first?.val {
            ans.append(rightMost)
        }
        
        for _ in 0..<Q.count {
            let curr = Q.popLast()

            if let left = curr?.left {
                Q.insert(left, at:0)
            }

            if let right = curr?.right {
                Q.insert(right, at:0)
            }
        }
    }
    
    return ans 
}