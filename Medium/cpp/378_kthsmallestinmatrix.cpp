/* Given a n x n matrix where each of the rows and columns are sorted in ascending order, 
find the kth smallest element in the matrix. */
#include <vector>
using namespace std;

struct minElem{
    bool operator()(const int& a, const int& b) const {
        return a > b;
    }
};

int kthSmallest(vector<vector<int>>& matrix, int k) {
    vector<int> flatArr; 
    
    for(int i = 0; i < matrix.size(); i++){
        for(int j = 0; j < matrix[i].size(); j++){
                flatArr.push_back(matrix[i][j]);
        }
    }
    
    
    make_heap(flatArr.begin(), flatArr.end(), minElem());
    
    for(int i = 0; i < k - 1; i++){
        pop_heap(flatArr.begin(), flatArr.end(), minElem());
        flatArr.pop_back();
    }

    return flatArr.front();
};