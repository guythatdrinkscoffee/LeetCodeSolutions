/* Given a linked list, determine if it has a cycle in it.
To represent a cycle in the given linked list, we use an integer pos which 
represents the position (0-indexed) in the linked list where tail connects to. 
If pos is -1, then there is no cycle in the linked list. */
func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head?.nextFastest
    
    while fast != nil {
        let nextFastest = fast?.nextFastest 
        if slow === nextFastest{
            return true
        }
        fast = nextFastest?.nextFastest
        slow = slow?.nextFastest
    }
    
    return false
}