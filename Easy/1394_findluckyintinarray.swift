/* Given an array of integers arr, a lucky integer is an integer which has a frequency in the array equal to its value.
Return a lucky integer in the array. If there are multiple lucky integers return the largest of them. If there is no 
lucky integer return -1. */
func findLucky(_ arr: [Int]) -> Int {
    var luckyNums = [Int]()
    var table = [Int:Int]()
    
    for n in arr{
            if table[n] == nil {
                table[n] = 1
            } else {
                table[n] = table[n]! + 1
            }
    }
    
    
    for (key,value) in zip(table.keys,table.values){
        if key == value {
            luckyNums.append(key)
        }
    }
    
    return luckyNums.max() ?? -1
}