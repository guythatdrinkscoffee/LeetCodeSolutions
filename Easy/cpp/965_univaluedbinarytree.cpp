/* A binary tree is univalued if every node in the tree has the same value.

Return true if and only if the given tree is univalued. */
#include "TreeNode.cpp"
#include <vector>
using namespace std;

bool isUnivalTree(TreeNode* root) {
    if(root == NULL){
        return false;
    }
    
    return checkVal(root, root->val);
}


bool checkVal(TreeNode* root, int val){
    if(root == NULL){
        return true;
    }
    
    if(root->val != val){
        return false;
    }
    
    return checkVal(root->left,val) && checkVal(root->right,val);
}
