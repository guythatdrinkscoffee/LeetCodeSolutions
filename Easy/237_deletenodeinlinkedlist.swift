/* Write a function to delete a node (except the tail) in a singly linked list,
given only access to that node. */
func deleteNode(_ node: ListNode?) {
    if let currNode = node {
        currNode.val = currNode.next!.val
        currNode.next = currNode.next?.next
    }
}