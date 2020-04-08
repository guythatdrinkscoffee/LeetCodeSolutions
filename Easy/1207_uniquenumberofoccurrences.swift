/* Given an array of integers arr, write a function that returns true if and only if the 
umber of occurrences of each value in the array is unique.
*/
func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict = [Int: Int]()
    var s : Set<Int> = []
  
    for i in 0..<arr.count {
        if dict[arr[i]] == nil{
            dict[arr[i]] = 1
        } else {
            dict[arr[i]] = dict[arr[i]]! + 1
        }
    }

    for value in dict.values {
        if s.contains(value){
            return false
        }
        s.insert(value)
    }
    
    return true
}