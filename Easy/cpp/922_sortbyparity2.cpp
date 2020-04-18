/* Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.
Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.
You may return any answer array that satisfies this condition. */
#include <vector>
using namespace std;

vector<int> sortArrayByParityII(vector<int>& A) {
    int currentOdd = 1;

    for(int i = 0 ; i < A.size(); i+= 2){
        if(A[i] % 2 == 1){
            while(A[currentOdd] % 2 == 1){
                currentOdd += 2;
            }
            
            swap(A[i], A[currentOdd]);
        }
    }
    
    return A;
}