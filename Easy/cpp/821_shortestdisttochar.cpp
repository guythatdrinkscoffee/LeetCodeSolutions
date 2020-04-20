/* Given a string S and a character C, return an array of integers representing the
shortest distance from the character C in the string. */
#include <vector>
#include <string>
using namespace std;

vector<int> shortestToChar(string S, char C) {
    int dist = 0;
    vector<int> out; 
    for(int i = 0; i < S.size(); i++){
        if(S[i] == C){
            out.push_back(0);
        }else{
            dist = min(distToLeft(S.substr(0,i),C), distToRight(S.substr(i+1,S.size()),C));
            out.push_back(dist);
        }

        
    }
    return out; 
}

int distToRight(string S, char C){
    int rightDist = 1;
    for(int i = 0; i < S.size(); i++){
        if(S[i] == C){
            return rightDist;
        }
        rightDist++; 
    }
    
    return INT_MAX;
}

int distToLeft(string S, char C){
    int leftDist = 1;
    
    for(int i = S.size() - 1; i > -1; i--){
        if(S[i] == C){
            return leftDist;
        }
        leftDist++; 
    }
    
    return INT_MAX; 
}