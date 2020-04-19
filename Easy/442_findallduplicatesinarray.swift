/* Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice 
and others appear once.
Find all the elements that appear twice in this array. */
func findDuplicates(_ nums: [Int]) -> [Int] {
    var seen = Set<Int>()
    var out = [Int]()
    
    for num in nums {
        if seen.contains(num){
            out.append(num)
        } else {
            seen.insert(num)
        }
    }
    
    return out
}