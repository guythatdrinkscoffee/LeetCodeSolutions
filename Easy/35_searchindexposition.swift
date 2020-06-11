/* Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
You may assume no duplicates in the array. */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var lo = 0, hi = nums.count - 1

    while lo <= hi {
        let mid = lo + (hi - lo) / 2

        if nums[mid] == target {
            return mid
        }else if target < nums[mid] {
            hi = mid - 1 
        }else{
            lo = mid + 1
        }
    }

    return lo
}