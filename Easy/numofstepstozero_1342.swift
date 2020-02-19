//Return the number of steps it takes for a number to be reduced down to zero by
//dividing it by two if its even and subtracting it by one if its odd. 
func numberOfSteps (_ num: Int) -> Int {
    var count = 0
    var currentNum = num
    while currentNum != 0 {
        if currentNum % 2 == 0 {
            currentNum /= 2
            
        }else{
            currentNum -= 1
        }
        count += 1
    }    
    return count 
}

