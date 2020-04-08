//Write a function that reverses a string. The input string is given as an array of characters char[].
func reverseString(_ s: inout [Character]) {
    var i = 0
    var j = s.count - 1
    var t: Character
    while i < j {
        t = s[i]
        s[i] = s[j]
        s[j] = t
        i += 1
        j -= 1
    }
}
