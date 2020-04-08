/* 
Given a non-empty, singly linked list with head node head, return a middle node of linked list.
If there are two middle nodes, return the second middle node.
*/
func middleNode(_ head: ListNode?) -> ListNode? {
    //Runners Technique
    var fast = head
    var slow = head
    
    while fast?.next != nil {
        fast = fast?.next?.next 
        slow = slow?.next
    }
    
    return slow
}