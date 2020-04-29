""" 
Given a non-empty list of words, return the k most frequent elements.
Your answer should be sorted by frequency from highest to lowest. If two words have the same frequency, 
then the word with the lower alphabetical order comes first.
"""
def topKFrequent(self, words: List[str], k: int) -> List[str]:
    frq = {}
    
    for s in words:
        frq[s.lower()] = frq.get(s.lower(), 0) + 1    
    
    ans = sorted(frq.items(), key = lambda x: (x[1] * -1 , x[0]))
    
    return [i[0] for i in ans[:k]]