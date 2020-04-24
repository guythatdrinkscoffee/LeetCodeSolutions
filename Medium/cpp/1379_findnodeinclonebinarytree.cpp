/* Given two binary trees original and cloned and given a reference to a node target in the original tree.
The cloned tree is a copy of the original tree.
Return a reference to the same node in the cloned tree.
*/
#include "TreeNode.cpp"
#include <vector>
using namespace std;

TreeNode* getTargetCopy(TreeNode* original, TreeNode* cloned, TreeNode* target) {
    if(original == NULL || cloned == NULL ){
        return NULL;
    }

    vector<TreeNode*> S; 
    
    TreeNode* curr = cloned;
    
    while (!S.empty() || curr != NULL) {
        while(curr != NULL){
            S.push_back(curr);
            curr = curr->left; 
        }
        
        curr = S.back();
        S.pop_back();

        if(curr->val == target->val){
            TreeNode* ans = curr;
            return ans; 
        }
        
        curr = curr->right; 
    }
    
    return NULL;
};