//Reverse a singly linked list.
func reverseList(_ head: ListNode?) -> ListNode? {
    var newHead = head 
    var previous = head
    var current = head?.next
    previous?.next = nil
    
    while current != nil {
        let next = current?.next
        current?.next = previous
        previous = current
        current = next 
    }
    
    newHead = previous
    return newHead 
}