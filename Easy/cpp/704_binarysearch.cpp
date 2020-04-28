/* Given a sorted (in ascending order) integer array nums of n elements and a target value, write a function to search target in nums. 
If target exists, then return its index, otherwise return -1. */
#include <vector>
using namespace std;

int search(vector<int>& nums, int target) {
    return binarySearch(nums,0,nums.size()-1,target); 
}

int binarySearch(vector<int> &nums, int low, int high, int target){
    if (low <= high) {
        int mid = (low + high) - low / 2;
        
        if(nums[mid] == target){
            return mid;
        }else if (target < nums[mid]){
            return binarySearch(nums,low,mid-1,target);
        }else if (target > nums[mid]){
            return binarySearch(nums,mid+1,high,target);
        }
    }
    
    return -1; 
}