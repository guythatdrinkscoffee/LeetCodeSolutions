/* Given a string containing just the characters '(', ')', '{', '}', '[' and ']', 
determine if the input string is valid. 
*/
func isValid(_ s: String) -> Bool {
    if s.count == 0 {
        return true
    }

    var stack = [Character]()
    
    for c in s {
        if c == "(" || c == "{" || c == "[" {
            stack.append(c) 
        } else {
            if stack.isEmpty{
                return false
            }

            if stack.last != "(" && c == ")" 
            || stack.last != "{" && c == "}" 
            || stack.last != "[" && c == "]" {
                return false 
            }
    
            stack.popLast()
        }
    }
    return stack.isEmpty 
}