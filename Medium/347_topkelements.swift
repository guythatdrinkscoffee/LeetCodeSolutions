/* Given a non-empty array of integers, return the k most frequent elements. */
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var freq = [Int: Int]()
    var out = [Int]()
    
    //count the frequency of each number
    for n in nums {
        freq[n] = (freq[n] ?? 0) + 1
    }
    
    for i in 0..<k{
        var maxKth = freq.max {a,b in a.value < b.value} 
        out.append(maxKth!.key)
        freq.removeValue(forKey: maxKth!.key)
    }
    
    return out
}