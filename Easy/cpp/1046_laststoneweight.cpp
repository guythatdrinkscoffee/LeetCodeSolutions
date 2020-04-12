/* We have a collection of stones, each stone has a positive integer weight.

Each turn, we choose the two heaviest stones and smash them together. 
Suppose the stones have weights x and y with x <= y.  The result of this smash is:

If x == y, both stones are totally destroyed;
If x != y, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.) 
*/
#include <vector>
using namespace std;

int lastStoneWeight(vector<int>& stones){
    if(stones.size() < 2){
        return stones.back();
    }

    make_heap(stones.begin(), stones.end());

    while(stones.size() != 0){
        pop_heap(stones.begin(),stones.end());
        int y = stones.back();
        stones.pop_back();

        pop_heap(stones.begin(),stones.end());
        int x = stones.back();
        stones.pop_back(); 

        if(x != y){
            stones.push_back(y - x);
            push_heap(stones.begin(), stones.end());
        }

        if(stones.size() == 1){
            return stones.back();
        }
    }

    return 0; 
}
