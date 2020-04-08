/* Given a string, determine if it is a palindrome, considering only alphanumeric 
characters and ignoring cases. 
*/
func isPalindrome(_ s: String) -> Bool {
    if s.count < 1 {
        return true
    }
    
    var charArr = [String]()
    for c in s {
        if c.isLetter || c.isNumber {
            charArr.append(String(c).lowercased())
        }
    }
    
    var i = 0
    var j = charArr.count - 1
    while i < j {
        if charArr[i] != charArr[j] {
            return false
        }
        i += 1
        j -= 1
    }
    
    return true
}