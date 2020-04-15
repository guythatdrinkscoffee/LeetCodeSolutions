/* You are given an integer array nums and you have to return a new counts array. 
The counts array has the property where counts[i] is the number of smaller elements 
to the right of nums[i]. */
func countSmaller(_ nums: [Int]) -> [Int] {
    var i = 0
    var j = nums.count - 1
    var out = [Int]()
    var count = 0
    
    while i < nums.count {
        while j > i {
            if nums[j] < nums[i]{
                count += 1
            }
            j -= 1
        }
        
        out.append(count)
        count = 0
        j = nums.count - 1
        i += 1
    }
    
    return out
}