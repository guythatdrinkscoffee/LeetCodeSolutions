func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var arr1  = [Int]()
    var arr2 = [Int]()
    var ans = [Int]()
        
    arr1.append(contentsOf: nums[0..<nums.count/2])
    arr2.append(contentsOf: nums[(nums.count/2)...])
        
    var i = 0 

    while( i < arr1.count && i < arr2.count){
        ans.append(arr1[i])
        ans.append(arr2[i])
        i+=1
    }
    
    return ans
}
