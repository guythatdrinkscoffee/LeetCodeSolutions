/* Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists. */
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    } else if l2 == nil {
        return l1
    }

    var leftListHead = l1
    var rightListHead = l2
    var newHead: ListNode?
    
    
    if let left = leftListHead, let right = rightListHead {
        if left.val < right.val {
            newHead = leftListHead
            leftListHead = leftListHead?.next
        } else {
            newHead = rightListHead
            rightListHead = rightListHead?.next
        }
    } 
    
    var head = newHead
    
    while let left = leftListHead, let right = rightListHead{
        if left.val < right.val {
            newHead!.next = left
            leftListHead = left.next
        } else {
            newHead!.next = right
            rightListHead = right.next
        }
        newHead = newHead?.next
    }
    
    
    if let left = leftListHead {
        newHead!.next = left
    }else if let right = rightListHead {
        newHead!.next = right 
    }
    
    return head
}