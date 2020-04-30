/* There are two sorted arrays nums1 and nums2 of size m and n respectively.
Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
You may assume nums1 and nums2 cannot be both empty. */

//This solution is not O(log(m+n))
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let list = nums1 + nums2 
    let med: Double?
    
    if list.count % 2 == 1{
        med = Double(median(list, Int(ceil(Double(list.count) / 2.0))))
    } else {
        med = Double((median(list, list.count/2 ) + median(list,list.count/2 + 1))) / 2.0
    }

    return med!
}

func median(_ arr: [Int], _ k: Int) -> Int{
    guard arr.count > 1 else {
        return arr[0] 
    }
    
    let i = Int.random(in: 0..<arr.count)
    let a = arr[i]
    
    let sm = arr.filter{$0 < a}
    let eq = arr.filter{$0 == a}
    let gr = arr.filter{$0 > a}
    
    let curr:[Int]
    let idx: Int
    
    if k <= sm.count {
        curr = sm
        idx = k
    } else if sm.count < k && k <= sm.count + eq.count {
        return eq[0]
    } else {
        curr = gr
        idx = k - sm.count - eq.count
    }
    
    return median(curr,idx)
    
}