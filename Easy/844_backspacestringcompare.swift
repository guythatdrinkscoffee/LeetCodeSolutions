/* Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character. */
func backspaceCompare(_ S: String, _ T: String) -> Bool {        
    return buildString(S) == buildString(T)
}

func buildString(_ s: String) -> String{
    var chars = [Character]()
    
    for c in s {
        if c != "#"{
            chars.append(c)
        } else {
            chars.popLast()
        }
    }
    
    return String(chars)
}