//Given an array nums of integers, return how many of them contain an even number of digits
func findNumbers(_ nums: [Int]) -> Int {
    var count = 0 
    for num in nums{
        if num.description.count % 2 == 0 {
            count += 1 
        }
    }
    return count 
}

var nums = [555,901,482,1771]
print(findNumbers(nums))