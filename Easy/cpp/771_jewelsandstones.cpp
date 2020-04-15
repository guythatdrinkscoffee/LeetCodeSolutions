/* 
You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  
Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.
*/
#include <vector>
#include <iostream>
#include <string>
using namespace std; 

int numJewelsInStones(string J, string S) {
    int count = 0; 
    for(auto jewel : J){
       for(auto stone: S){
           if (jewel == stone){
               count++;
           }   
       }
    }
    return count;
}