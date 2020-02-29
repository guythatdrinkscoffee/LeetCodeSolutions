/*  
We are given a list nums of integers representing a list compressed with run-length encoding.
Consider each adjacent pair of elements [a, b] = [nums[2*i], nums[2*i+1]] (with i >= 0).  
For each such pair, there are a elements with value b in the decompressed list.
Return the decompressed list.
*/
func decompressRLElist(_ nums: [Int]) -> [Int] {
    var decompressedList = [Int]()
    var i = 0, j = i + 1
    while j < nums.count {
        let a = nums[i]
        let b = nums[j]
        let decompressed = Array(repeating: b, count: a)
        decompressedList += decompressed
        i += 2
        j += 2
    }
    return decompressedList
}
