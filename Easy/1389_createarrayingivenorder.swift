/* Given two arrays of integers nums and index. Your task is to create target array under 
the following rules:
    1. Initially target array is empty.
    2. From left to right read nums[i] and index[i], insert at index index[i] the value nums[i] in target array.
    3. Repeat the previous step until there are no elements to read in nums and index.
Return the target array. */
func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var target = [Int]()

    for i in 0..<nums.count{
        target.insert(nums[i], at: index[i])
    }
  
    return target
}