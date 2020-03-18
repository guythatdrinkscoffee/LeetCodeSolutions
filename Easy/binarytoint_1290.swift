/* Given head which is a reference node to a singly-linked list. The value of each node in the linked list is either 0 or 1. 
The linked list holds the binary representation of a number.
Return the decimal value of the number in the linked list. */
func getDecimalValue(_ head: ListNode?) -> Int {
    var binaryRep = [Int]()
    var ans = 0
    var curr = head
    var j = 0

    while let val = curr?.val{
        binaryRep.append(val)
        curr = curr?.next
    }
    
    for i in (0..<binaryRep.count).reversed() {
        ans += binaryRep[i] * Int(pow(Double(2),Double(j)))
        j += 1
    }

    return ans 
}