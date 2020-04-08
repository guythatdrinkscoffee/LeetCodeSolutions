/*
 Given two sorted integer arrays nums1 and nums2,
 merge nums2 into nums1 as one sorted array 
*/.
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var indexOfNums1 = m - 1 
    var indexOfNums2 = n - 1 
    var insertionIndex = (m + n) - 1
    
    while indexOfNums1 >= 0 && indexOfNums2 >= 0{
        if nums1[indexOfNums1] < nums2[indexOfNums2]{
            nums1[insertionIndex] = nums2[indexOfNums2]
            insertionIndex -= 1
            indexOfNums2 -= 1
        }else{
            nums1[insertionIndex] = nums1[indexOfNums1]
            insertionIndex -= 1
            indexOfNums1 -= 1
        }
    }
    
    while indexOfNums2 >= 0 {
        nums1[insertionIndex] = nums2[indexOfNums2]
        indexOfNums2 -= 1
        insertionIndex -= 1
    }
}