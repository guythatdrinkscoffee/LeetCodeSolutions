/* Remove all elements from a linked list of integers that have value val. */
#include "ListNode.cpp"
#include <climits>
#include <version>

ListNode* removeElements(ListNode* head, int val) {
    if(!head){
        return nullptr;
    }
    ListNode* fakeHead = new ListNode(INT_MAX);
    fakeHead->next = head;
    
    ListNode* curr = fakeHead; 
    
    while(curr && curr->next){
        if(curr->next->val == val){
            curr->next = curr->next->next; 
        }else{
            curr= curr->next; 
        }
    }
    
    return fakeHead->next; 
}