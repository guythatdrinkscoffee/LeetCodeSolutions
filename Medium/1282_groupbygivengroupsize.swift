/* There are n people whose IDs go from 0 to n - 1 and each person belongs exactly to one group. 
Given the array groupSizes of length n telling the group size each person belongs to, return the 
groups there are and the people's IDs each group includes.
Input: groupSizes = [3,3,3,3,3,1,3]
Output: [[5],[0,1,2],[3,4,6]]
*/
func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    var freq = [Int: [Int]]()

    for i in 0..<groupSizes.count{
        freq[groupSizes[i]] = (freq[groupSizes[i]] ?? []) + [i]
    }
    
    for (key,value) in zip(freq.keys,freq.values){
        let arr = value 
        
        if key == arr.count{
            ans.append(value)
        }else{
            var low = 0
            var high = key;
            while low < value.count{
                ans.append(Array(value[low..<high]))
                low += key
                high += key
            }
        }
    }
    
    return ans
}
