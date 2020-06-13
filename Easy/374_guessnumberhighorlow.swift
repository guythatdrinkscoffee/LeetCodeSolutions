/* We are playing the Guess Game. The game is as follows:
I pick a number from 1 to n. You have to guess which number I picked.
Every time you guess wrong, I'll tell you whether the number is higher or lower. */

func guessNumber(_ n: Int) -> Int {
    var lo = 1, hi = n 
    
    while lo <= hi {
        let mid = (hi + lo) / 2
        
        if guess(mid) == 1 {
            lo = mid + 1 
        } else if guess(mid) == -1 {
            hi = mid - 1 
        }else {
            return mid
        }
    }
    
    return -1
}

