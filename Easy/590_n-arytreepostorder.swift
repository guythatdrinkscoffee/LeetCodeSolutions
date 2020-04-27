/* Given an n-ary tree, return the postorder traversal of its nodes' values. */
func postorder(_ root: Node?) -> [Int] {
    guard let root = root else {
        return []
    }
    
    var ans = [Int] ()
    post(root, &ans)
    
    return ans 
}

func post(_ root: Node,_ arr: inout [Int]){
    if root == nil {
        return 
    }
    
    root.children.forEach { child in post(child, &arr)}
    arr.append(root.val)
}