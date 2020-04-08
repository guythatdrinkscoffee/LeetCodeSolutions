/* Given a singly linked list, determine if it is a palindrome */

//reverseList reverses a list starting at a given node
func reverseList(_ head: ListNode?) -> ListNode?{
    var newHead = head
    var current = head?.next 
    var previous = head
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

//Middle returns a reference to the middle node 
func middle(_ head: ListNode?) -> ListNode?{
    var slow = head
    var fast = head

    while let nextFast = fast?.next {
        fast = nextFast.next
        slow = slow?.next 
    }
    return slow 
}

func isPalindrome(_ head: ListNode?) -> Bool {
    //1. Keep a reference to the left half of the list
    var leftHalf = head

    //2. Reference to the right half of the list starting at the middle and reversed
    var rightHalfReversed = reverseList(middle(head))

    //3. Iterate through both lists simultaneously
    while leftHalf != nil && rightHalfReversed != nil {
        if let leftHalfVal = leftHalf?.val, let rightHalfReversedVal = rightHalfReversed?.val{
            if leftHalfVal != rightHalfReversedVal {
                return false
            }
            leftHalf = leftHalf?.next
            rightHalfReversed = rightHalfReversed?.next 
        }
    }

    return true 
}