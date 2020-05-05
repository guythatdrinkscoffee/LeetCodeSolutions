/* Given a sorted linked list, delete all duplicates such that each element appear only once. */
#include "ListNode.cpp"

ListNode* deleteDuplicates(ListNode* head) {
    if(!head){
        return nullptr;
    }
    
    ListNode* curr = head;
    
    while(curr && curr->next){
        if(curr->next->val == curr->val){
            curr->next = curr->next->next;
        } else {
            curr = curr->next; 
        }
    }
    
    return head;
}