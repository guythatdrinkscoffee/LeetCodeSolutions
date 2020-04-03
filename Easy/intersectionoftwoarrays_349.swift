/* Given two arrays, write a function to compute their intersection. */
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var seen = Set<Int>()
    var smallest : [Int]
    var biggest: [Int]
    var intersection = [Int]()
    
    if nums1.count < nums2.count {
        smallest = nums1
        biggest = nums2
    } else {
        smallest = nums2
        biggest = nums1
    }
    
    for n in biggest{
        seen.insert(n)
    }
    
    for m in smallest{
        if seen.contains(m){
            intersection.append(m)
            seen.remove(m)
        }
    }
    
    return intersection
}