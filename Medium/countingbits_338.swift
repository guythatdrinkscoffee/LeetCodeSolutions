/* Given a non negative integer number num. For every numbers i in the 
range 0 ≤ i ≤ num calculate the number of 1's in their binary 
representation and return them as an array. 
*/
func countBits(_ num: Int) -> [Int] {
    var x: Int 
    var count = 0
    var ans = [Int]()
    
    for i in 0...num {
        x = i
        while x > 0 {
            if x % 2 == 1 {
                count += 1
            }
            x /= 2
        }
        ans.append(count)
        count = 0
    }

    return ans
}