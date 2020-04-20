/* Given an array of numbers nums, in which exactly two elements appear only once 
and all the other elements appear exactly twice. Find the two elements that appear only once. */   func singleNumber(_ nums: [Int]) -> [Int] {
func singleNumber(_ nums: [Int]) -> [Int] {
    var haveSeen = Set<Int>()
    
    for num in nums {
        if haveSeen.contains(num){
            seen.remove(num)
        } else {
            haveSeen.insert(num)
        }
    }
    
    return Array(haveSeen)
}