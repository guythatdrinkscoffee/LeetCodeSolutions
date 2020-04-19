/* You are given a sorted array consisting of only integers where every element appears exactly twice, 
except for one element which appears exactly once. Find this single element that appears only once.
 */
func singleNonDuplicate(_ nums: [Int]) -> Int {
    var table = [Int: Int]()
    
    for num in nums {
        if table[num] == nil {
            table[num] = 1
        } else {
            table[num] = table[num]! + 1
        }
    }
    
    let ans = table.filter {$0.value == 1}
    
    return ans.first?.key ?? 0
}