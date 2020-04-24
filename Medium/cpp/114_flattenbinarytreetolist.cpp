/* Given a binary tree, flatten it to a linked list in-place. */
#include "TreeNode.cpp"
#include <vector>
using namespace std; 

void flatten(TreeNode* root) {
    if(root == NULL){
        return;
    }
    
    vector<TreeNode*> preOrder;
    vector<TreeNode*> S;
    
    TreeNode* curr = root; 
    
    while(!S.empty() || curr != NULL){
        while(curr != NULL){
            preOrder.push_back(curr);
            S.push_back(curr);
            curr = curr->left;
        }
        
        curr = S.back();
        S.pop_back();
        
        curr = curr->right; 
    }

    for(int i = 0; i < preOrder.size() - 1; i++){
        preOrder[i]->right = preOrder[i+1];
        preOrder[i]->left = NULL; 
    }
}