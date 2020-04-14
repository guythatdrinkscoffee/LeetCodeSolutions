/* Given a paragraph and a list of banned words, return the most frequent word that is not in the list of banned words.  
It is guaranteed there is at least one word that isn't banned, and that the answer is unique. Words in the list of 
banned words are given in lowercase, and free of punctuation.  Words in the paragraph are not case sensitive.  
The answer is in lowercase. */
func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    var bannedWords = Set(banned)
    var freq = [String:Int]()
    let words = paragraph.split { !$0.isLetter }
    
    for word in words {
        if bannedWords.contains(word.lowercased()){
            continue
        }
        
        let curr = word.lowercased()
        
        if freq[curr] == nil {
            freq[curr] = 1
        } else {
            freq[curr] = freq[curr]! + 1
        }
    }      
        
    return freq.max { a,b in a.value < b.value }?.key ?? ""   
}