/* 
Given a string S of lowercase letters, a duplicate removal consists of
choosing two adjacent and equal letters, and removing them. We
repeatedly make duplicate removals on S until we no longer can.
Return the final string after all such duplicate removals have been made.  
It is guaranteed the answer is unique.
*/
func removeDuplicates(_ S: String) -> String {
    guard S.count > 1 else {
        return S
    }

    var charStack = ""

    for char in S{
        if charStack.last != char || charStack.isEmpty {
            charStack.append(char)

        } else {
            charStack.removeLast()

        }
    }

    return String(charStack)
}