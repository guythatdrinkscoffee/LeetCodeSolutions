/* Given an integer array nums, find the contiguous subarray (containing at least one number)
which has the largest sum and return its sum.*/
func maxSubArray(_ nums: [Int]) -> Int {
    var currentMax = nums[0]
    var prev = nums[0]
    for k in 1..<nums.count{
        let sum = prev + nums[k]
        currentMax = max(nums[k], sum, currentMax)
        prev = max(sum,nums[k])
    }
    return currentMax
}