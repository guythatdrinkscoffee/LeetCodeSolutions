/* Given an array of size n, find the majority element. The majority element is the element that 
appears more than ⌊ n/2 ⌋ times. You may assume that the array is non-empty and the majority 
element always exist in the array.
*/
func majorityElement(_ nums: [Int]) -> Int {
    if nums.count == 1 {
        return nums.first!
    }

    var countDic = [Int: Int]()

    for num in nums{
        if countDic[num] == nil {
            countDic[num] = 1
        } else {
            countDic[num] = countDic[num]! + 1 
            if countDic[num]! > nums.count / 2 {
                return num
            }
        }
    }

    return -1
}