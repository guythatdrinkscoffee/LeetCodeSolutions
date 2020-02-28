/* 
The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, 
such that each number is the sum of the two preceding ones, starting from 0.
Given N, calculate F(N).
*/
//Recursive Solution
func fib(_ N: Int) -> Int {
    if(N == 0){
        return N
    }else if N == 1 {
        return 1
    }
    return fib(N-1) + fib(N-2)
}

//Iterative Solution
func fib2(_ N: Int) -> Int {
    if N  == 0 {
        return 0
    }else if N == 1 {
        return 1
    }

    var f0 = 0, f1 = 1, curr = 0
    for _ in 1..<N{ 
        curr = f0 + f1
        f0 = f1 
        f1 = curr
    }
    return curr 
}