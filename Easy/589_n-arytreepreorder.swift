/* Given an n-ary tree, return the preorder traversal of its nodes' values */
func preorder(_ root: Node?) -> [Int] {
    var nodeStack = [Node]()
    var current = root 
    var out = [Int]()
    
    while current != nil || !nodeStack.isEmpty {
        out.append(current!.val)
        
        for child in current!.children.reversed(){
            nodeStack.append(child)
        }
        
        current = nodeStack.popLast()
    }
    
    return out
}