/* Given an array nums containing n + 1 integers where each integer 
is between 1 and n (inclusive), prove that at least one duplicate number
must exist. Assume that there is only one duplicate number, find the duplicate 
one. 
*/
func findDuplicate(_ nums: [Int]) -> Int {
    //Iteratively using two indices
    // var j = nums.count - 1
    // for i in 0..<nums.count {
    //     while i < j {
    //         if nums[i] == nums[j] {
    //             return nums[i]
    //         }
    //         j -= 1
    //     }
    //     j = nums.count - 1
    // }

    //Using a Set
    var observed = Set<Int>()
    for n in nums {
        if observed.contains(n){
            return n
        } else {
            observed.insert(n)
        }
    }

    return -1
}
