/* Write an algorithm to determine if a number is "happy".
A happy number is a number defined by the following process: Starting with any 
positive integer, replace the number by the sum of the squares of its digits, 
and repeat the process until the number equals 1 (where it will stay), 
or it loops endlessly in a cycle which does not include 1. 
Those numbers for which this process ends in 1 are happy numbers.
*/
func isHappy(_ n: Int) -> Bool {
    var sum = squareNumberSum(n)
    var set = Set<Int>()
    
    while sum != 1 {
        if set.contains(sum){
            return false 
        }else{
            set.insert(sum)
        }
        sum = squareNumberSum(sum)
    }
    return true
}

/* A function that returns the sum of the squares of each digit of a given number n */
func squareNumberSum(_ n: Int) -> Int {
    var x = n
    var sum = 0
    while x > 0 {
        let digit = x % 10
        x /= 10
        sum += digit * digit
    }
    return sum
}