//Given an array of integers, find if the array contains any duplicates.
//Brute Force Solution 
func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict: [Int:Int] = [:]
    for n in nums{ dict[n] = 0 }
    
    for k in nums{
        dict[k]! += 1 
        if dict[k]! > 1 {
            return true 
        }
    }
    return false


}

//Optimal Solution
func optimalContainsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}