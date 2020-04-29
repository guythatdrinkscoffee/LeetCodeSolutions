/* Given an array of integers nums, sort the array in ascending order. */
func sortArray(_ nums: [Int]) -> [Int] {
    var arr = nums
    return mergeSort(arr)
}

func mergeSort(_ arr: [Int]) -> [Int]{
    guard arr.count > 1 else {
        return arr 
    }
    
    let mid = arr.count / 2
    let leftArr = mergeSort(Array(arr[..<mid]))
    let rightArr = mergeSort(Array(arr[mid...]))
    
    return merge(leftArr, rightArr)
}

func merge(_ L: [Int],_ R: [Int]) -> [Int] {
    var i = 0
    var j = 0
    
    var ans : [Int] = []
    
    while i < L.count && j < R.count {
        if L[i] < R[j] {
            ans.append(L[i])
            i += 1
        }else if L[i] > R[j] {
            ans.append(R[j])
            j += 1
        }else{
            ans.append(L[i])
            i+=1
            ans.append(R[j])
            j+=1
        }
    
    }
    
    if i < L.count {
        ans.append(contentsOf: L[i...])
    }
    
    if j < R.count {
        ans.append(contentsOf: R[j...])
    }
    
    return ans
}