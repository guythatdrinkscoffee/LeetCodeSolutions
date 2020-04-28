/* Given a linked list, swap every two adjacent nodes and return its head.

You may not modify the values in the list's nodes, only nodes itself may be changed. */
#include "ListNode.cpp"
using namespace std;

ListNode* swapPairs(ListNode* head) {
    if (!head) {
        return nullptr;
    }else if (!head->next) {
        return head;
    }
    
    ListNode* curr = head;
    ListNode* nextNode = head->next;
    ListNode* visitNext = nextNode->next;

    nextNode->next = curr;
    curr->next = swapPairs(visitNext);

    return nextNode; 
}