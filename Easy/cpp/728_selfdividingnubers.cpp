/* A self-dividing number is a number that is divisible by every digit it contains.
For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
Also, a self-dividing number is not allowed to contain the digit zero.
Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible. */
#include <vector>
using namespace std;

vector<int> selfDividingNumbers(int left, int right) {
    vector<int> out;
    int current = 0;
    int digit = 0;
    bool isSelfDividing = true; 
    
    for(int i = left; i <= right; i++){
        current = i;
        isSelfDividing = true; 
        
        while(current > 0 ){
            digit = current % 10;

            if (digit == 0 || i % digit != 0 ){
                isSelfDividing = false;
                break;
            }
            
            current /= 10;
            
        }
        
        if(isSelfDividing){
            out.push_back(i);
        }
    
    }
    
    return out;
}