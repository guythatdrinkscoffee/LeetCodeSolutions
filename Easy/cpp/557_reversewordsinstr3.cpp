/* Given a string, you need to reverse the order of characters in each word within 
a sentence while still preserving whitespace and initial word order. */
#include <string>
using namespace std;

string reverseWords(string s) {
    string str = s;
    int i = 0;
    int j = 0;
    int spaceAt = 0;
        
    while (i < str.size()){
        //look for the first space encountered
        while(str[j] != ' ' && j <= str.size() - 1){
            j += 1;
        }
        
        //our space character is found so we store the position of the current space
        spaceAt = j;
        
        //The last word before the space is -1 to the left of the current space pos
        j--;
        
        //reverse the current word
        while(i < j){
            char t = str[i];
            str[i++] = str[j];
            str[j--] = t;
        }
        
        //update the start of the new word which is +1 to the right of the current space pos
        i = spaceAt + 1;
        j = i ;
    }
        
    return str;
}