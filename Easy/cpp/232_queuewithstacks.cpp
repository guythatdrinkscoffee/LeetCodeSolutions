/* Implement the following operations of a queue using stacks. */
#include <vector>
using namespace std; 

class MyQueue {
public:
    /** Initialize your data structure here. */
    vector<int> L = {};
    vector<int> R = {};
    MyQueue() {
        
    }
    
    /** Push element x to the back of queue. */
    void push(int x) {
        R.push_back(x);
    }
    
    /** Removes the element from in front of queue and returns that element. */
    int pop() {
      if(L.empty()){
          while(!R.empty()){
              L.push_back(R.back());
              R.pop_back();
          }
      }
        int p = L.back();
        L.pop_back();
        return p;
    }
    
    /** Get the front element. */
    int peek() {
        if(!L.empty()){
            return L.back();
        } else{
            return R.front(); 
        }
    }
    
    /** Returns whether the queue is empty. */
    bool empty() {
        return (L.empty() && R.empty());
    }


};