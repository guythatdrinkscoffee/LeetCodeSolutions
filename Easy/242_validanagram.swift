/* Given two strings s and t , write a function to determine if t is an 
anagram of s. 
*/
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false 
    }

    var stringDict = [Character: Int]()
    var compareDict = [Character: Int]()
    
    for c in s {
        if stringDict[c] == nil {
            stringDict[c] = 1
        } else {
            stringDict[c] = stringDict[c]! + 1
        }
    }

    for k in t {
        if compareDict[k] == nil {
            compareDict[k] = 1
        } else {
            compareDict[k] = compareDict[k]! + 1
        }
    }


    return stringDict == compareDict
}