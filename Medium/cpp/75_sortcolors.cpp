/* 
Given an array with n objects colored red, white or blue, sort them in-place so that objects of the same color are adjacent,
with the colors in the order red, white and blue.
Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively. */
#include <vector>
using namespace std; 

void sortColors(vector<int>& nums){
    qS(nums,0,nums.size()-1);
}

int part(vector<int>& arr, int low, int high){
    int pivot = arr[high];
    int i = low;
    for(int j = low; j < high; j++){
        if(arr[j] <= pivot){
            swap(arr[j],arr[i]);
            i++;
        }
    }
    swap(arr[i], arr[high]);
    return i; 
}

void qS(vector<int>& nums, int low, int high){
    if(low < high){
        int p = part(nums,low,high);
        qS(nums,low,p-1);
        qS(nums,p+1,high);
    }
}