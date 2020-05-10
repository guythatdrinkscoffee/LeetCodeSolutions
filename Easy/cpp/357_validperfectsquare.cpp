/* Given a positive integer num, write a function which returns True if num is a perfect square else False. */
bool isPerfectSquare(int num) {
    if(num == 1){
        return true;
    }
    
    int low = 0, high = num/2;

    while(low <= high){
        double mid = (low + high)/2;
        if(mid == num/mid){
            return true; 
        }
        if(mid > num/mid){
            high = mid - 1; 
        }else{
            low = mid + 1; 
        }
    }
    return false; 
}