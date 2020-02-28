//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count{
        for j in (i+1)..<nums.count{
            if nums[j] == target - nums[i]  {
                return [i,j]
            }
        }
       
    }
    
    return []
}