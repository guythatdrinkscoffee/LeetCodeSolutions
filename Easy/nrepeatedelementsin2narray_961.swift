/* In a array A of size 2N, there are N+1 unique elements, and exactly 
one of these elements is repeated N times. Return the element repeated N times. 
*/
func repeatedNTimes(_ A: [Int]) -> Int {
    var s : Set<Int> = []
    for num in A {
        if s.contains(num){
            return num 
        }
        s.insert(num)
    }
    return 0
}