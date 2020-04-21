/* Given a linked list, remove the n-th node from the end of list and return its head. */
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var newHead = ListNode(-1)
    newHead.next = head
    var slow = newHead
    var fast = newHead
    
    for i in 1...n{
        if let nxt = fast.next{
            fast = nxt
        }
    }
    
    while let nxtFast = fast.next, let nextSlow = slow.next{
        fast = nxtFast
        slow = nextSlow
    }

    slow.next = slow.next?.next
    
    return newHead.next
}