// Given an integer number n, return the difference between the product of its digits and the sum of its digits.
func subtractProductAndSum(_ n: Int) -> Int {
    var num = n
    var digit = 0
    var product = 1
    var sum = 0 
    
    while(num != 0){
        digit = num % 10
        product *= digit
        sum += digit 
        num /= 10
    }

    return product - sum 
}