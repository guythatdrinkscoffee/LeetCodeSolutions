/* Given a string, find the first non-repeating character in it and return it's index.
If it doesn't exist, return -1. */
func firstUniqChar(_ s: String) -> Int {
    var table = [Character: Int]()
    var idx = 0
    
    for letter in s {
        if table[letter] == nil {
            table[letter] = 1
        } else {
            table[letter] = table[letter]! + 1
        }
    }
    
    for letter in s{
        if table[letter] == 1 {
            return idx
        }
        
        idx += 1 
    }
    
    return -1 
}