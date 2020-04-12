/* Given two binary search trees root1 and root2.
Return a list containing all the integers from both trees sorted 
in ascending order. */
func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
    let rightElements = traverse(root1)
    let leftElements = traverse(root2)
    
    return (rightElements + leftElements).sorted() 
}

func traverse(_ root: TreeNode?) -> [Int]() {
    var treeStack = [TreeNode]()
    var elements = [Int]()
    var current = root

    while current != nil || !treeStack.isEmpty {
        while current != nil {
            elements.append(current!.val)
            treeStack.append(current!)
            current = current?.left
        }

        current = treeStack.popLast()
        current = current?.right
    }

    return elements 
}