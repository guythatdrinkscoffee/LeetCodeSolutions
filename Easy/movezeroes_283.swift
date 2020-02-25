//Given an array nums, write a function to move all 0's to the end of it 
//while maintaining the relative order of the non-zero elements.
func moveZeroes(_ nums: inout [Int]) {        
    if nums.count < 1 {
        return 
    }

    var currentZeroIndex = 0
    for i in 0..<nums.count{
        if nums[i] != 0 {
            let temp = nums[i]
            nums[i] = nums[currentZeroIndex]
            nums[currentZeroIndex] = temp
            currentZeroIndex += 1
        }
    }
}