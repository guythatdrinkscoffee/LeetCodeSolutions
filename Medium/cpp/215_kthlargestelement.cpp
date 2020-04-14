/* Find the kth largest element in an unsorted array. Note that it is the kth largest 
element in the sorted order, not the kth distinct element. */
#include <vector>
using namespace std;

int findKthLargest(vector<int>& nums, int k) { 
    make_heap(nums.begin(), nums.end());

    for(int i = 0; i < k-1; i++){
        pop_heap(nums.begin(),nums.end());
        nums.pop_back();
    }

    return nums.front(); 
}