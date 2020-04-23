/* Given the array queries of positive integers between 1 and m, you have to process all queries[i] (from i=0 to i=queries.length-1) according to the 
following rules:
In the beginning, you have the permutation P=[1,2,3,...,m].
For the current i, find the position of queries[i] in the permutation P (indexing from 0) and then move this at the beginning of the permutation P.
Notice that the position of queries[i] in P is the result for queries[i].
Return an array containing the result for the given queries.
*/
func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
    var P = [Int]()
    var out = [Int]()
    
    for i in stride(from: 0, to: m, by: 1){
        P.append(i+1)
    }
    
    for q in queries{
        var idx = P.firstIndex(of: q)!
        out.append(idx)
        var i = idx - 1
        while(i >= 0 ){
            P.swapAt(i,idx)
            i -= 1
            idx -= 1
        }
    }
    
    return out
}