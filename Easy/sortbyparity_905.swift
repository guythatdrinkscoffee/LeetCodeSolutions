/* 
Given an array A of non-negative integers, return an array consisting of all the even elements of A, 
followed by all the odd elements of A. You may return any answer array that satisfies this condition. 
*/

func sortArrayByParity(_ A: [Int]) -> [Int] {
    if A.count < 1 {
        return A 
    }

    var arrayCopy = A
    var oddIndex = 0

    for i in 0..<arrayCopy.count{
        if arrayCopy[i] % 2 == 0 {
            let temp = arrayCopy[i]
            arrayCopy[i] = arrayCopy[oddIndex]
            arrayCopy[oddIndex] = temp 
            oddIndex += 1
        }
    }
    
    return arrayCopy
}