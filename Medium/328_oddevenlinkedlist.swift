/* Given a singly linked list, group all odd nodes together followed by the even 
nodes. Please note here we are talking about the node number and not the value 
in the nodes. You should try to do it in place. The program should run in O(1) 
space complexity and O(nodes) time complexity. */
func oddEvenList(_ head: ListNode?) -> ListNode? {
    var odd = head
    var even = odd?.next
    var evenHead = odd?.next
    
    while let nextNode = even?.next {
        odd?.next = nextNode
        odd = odd?.next
        even?.next = odd?.next
        even = even?.next
    }
    
    odd?.next = evenHead

    return head
}