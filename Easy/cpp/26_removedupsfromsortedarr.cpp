/* Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length. */
#include <vector>
using namespace std;

int removeDuplicates(vector<int>& nums){
    int arrLength = nums.size();
    if (arrLength < 1){
        return 0
    }
    
    int p1 = 0;
    int p2 = 1;

    while(p2 < arrLength){
        if(nums[p2] != nums[p1]){
            p1++;
            nums[p1] = nums[p2];
        }
        p2++; 
    }

    return p1 + 1; 

}