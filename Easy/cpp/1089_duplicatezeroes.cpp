/* Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right. */
#include <vector>
using namespace std;

void duplicateZeroes(vector<int>& arr){
    vector<int> out; 

    for(int i = 0; i < arr.size(); i++){
        if(arr[i] == 0){
            out.push_back(0);
        }
        out.push_back(arr[i]);
    }

    for(int j = 0; j < arr.size(); j++){
        arr[j] = out[j];
    }
}