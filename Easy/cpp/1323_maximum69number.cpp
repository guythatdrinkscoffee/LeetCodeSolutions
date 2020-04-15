/* Given a positive integer num consisting only of digits 6 and 9.
Return the maximum number you can get by changing at most one digit 
(6 becomes 9, and 9 becomes 6) */
#include <vector>
#include <string>
using namespace std;

int maximum69Number (int num) {
    vector<int> nums;
    string numString = to_string(num);
        
    for(int i = 0; i < numString.size(); i++){
        char originalDigit = numString[i];
        
        if (numString[i] == '6'){
            numString[i] = '9';
        } else {
            numString[i] = '6';
        }
        
        nums.push_back(stoi(numString));
        numString[i] = originalDigit;
    }
    
    make_heap(nums.begin(), nums.end());
    
    return max(nums.front(),num);
}
