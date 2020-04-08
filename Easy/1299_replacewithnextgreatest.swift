/*  
Given an array arr, replace every element in that array with the greatest element among the elements to its right, 
and replace the last element with -1. After doing so, return the array.
*/
func replaceElements(_ arr: [Int]) -> [Int] {
    var nums = arr
    var currentMax = -1
    var index = arr.count - 1
    while index > -1 {
        let currentNumber = nums[index]
        nums[index] = currentMax
        currentMax = max(currentMax, currentNumber)
        index -= 1
    }
    return nums
}
