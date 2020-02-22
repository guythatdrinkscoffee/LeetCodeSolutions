//Given a non-empty array of integers, every element appears twice except for one. Find that single one.
//BruteForce Solution using a Dictionary
func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int:Int]()
    for n in nums {
       dict[n] = 0
    }

    for k in nums{
        dict[k]! += 1 
    }
    
    for k in dict.keys {
        if dict[k] == 1{
            return k
        }
    }
}

