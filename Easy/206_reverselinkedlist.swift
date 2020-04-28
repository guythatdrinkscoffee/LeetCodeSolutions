//Reverse a singly linked list.
func reverseList(_ head: ListNode?) -> ListNode? {
    //ITERATIVE
    // var newHead = head 
    // var previous = head
    // var current = head?.next
    // previous?.next = nil
    
    // while current != nil {
    //     let next = current?.next
    //     current?.next = previous
    //     previous = current
    //     current = next 
    // }
    
    // newHead = previous
    // return newHead

    //RECURSIVE
    if head == nil || head?.next == nil {
        return head
    }

    let list = reverseList(head?.next)

    head?.next?.next = head
    head?.next = nil
    
    return list 
}