/* Given a 32-bit signed integer, reverse digits of an integer. */
func reverse(_ x: Int) -> Int {
    var xCopy = x
    var reversedNum = 0
    var digit = 0 

    while abs(xCopy) > 0 {
        digit = xCopy % 10
        xCopy /= 10
        reversedNum = (reversedNum * 10) + digit 
        if reversedNum > Int32.max || reversedNum < Int32.min {
            return 0
        }
    }
    
    return reversedNum
}