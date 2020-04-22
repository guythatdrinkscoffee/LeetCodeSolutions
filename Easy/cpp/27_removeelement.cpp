/* Given an array nums and a value val, remove all instances of that value in-place and return the
new length. */
#include <vector>
using namespace std;

int removeElement(vector<int>& nums, int val){
    int p1 = 0;

    for(int p2 = 0; p2 < nums.size(); p2++){
        if(nums[p2] != val){
            nums[p1] = nums[p2];
            p1++;
        }
    }

    return p1;
}g