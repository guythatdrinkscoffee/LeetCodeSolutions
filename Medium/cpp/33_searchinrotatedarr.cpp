/* Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
You are given a target value to search. If found in the array return its index, otherwise return -1.
You may assume no duplicate exists in the array.
 */
#include <vector>
using namespace std; 

int search(vector<int>& nums, int target) {
    int i = 0;
    int j = nums.size() - 1;
    
    while(i <= j){
        if (nums[i] == target) {
            return i;
        }else if (nums[j] == target) {
            return j;
        }
        
        i++;
        j--;
    }
    
    return -1;
}