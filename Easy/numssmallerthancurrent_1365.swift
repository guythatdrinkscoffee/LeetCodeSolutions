/* Given the array nums, for each nums[i] find out how many numbers in the array 
are smaller than it. That is, for each nums[i] you have to count the number of 
valid j's such that j != i and nums[j] < nums[i].

Return the answer in an array. */
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var table = [Int:Int]()
    var smallerNumbers = [Int]()
    var count = 0
    
    for i in 0..<nums.count {
        if table[nums[i]] != nil {
            smallerNumbers.append(table[nums[i]]!)
            continue
        } else {
            for j in 0..<nums.count{
                if nums[j] < nums[i] && j != i {
                    count += 1
                }
            }
            smallerNumbers.append(count)
            table[nums[i]] = count 
            count = 0
        }
    
    }
    
    return smallerNumbers
}
