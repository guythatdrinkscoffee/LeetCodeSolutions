/* In a town, there are N people labelled from 1 to N.  There is a rumor that one of these people is secretly the town judge.

If the town judge exists, then:

The town judge trusts nobody.
Everybody (except for the town judge) trusts the town judge.
There is exactly one person that satisfies properties 1 and 2.
You are given trust, an array of pairs trust[i] = [a, b] representing that the person labelled a trusts the person labelled b.

If the town judge exists and can be identified, return the label of the town judge.  Otherwise, return -1. */
func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
    guard N > 1 else {
        return N
    }
    
    var tbl = [Int: [Int]]() 
    
    for i in 0..<trust.count {
        tbl[trust[i][0]] = (tbl[trust[i][0]] ?? []) + [trust[i][1]]
        tbl[trust[i][1]] = (tbl[trust[i][1]] ?? []) + []
    }
    
    var possibleJudge = tbl.filter{$0.value.isEmpty}
    var judge : Int
    if possibleJudge.count > 1 {
        return -1
    } else {
        judge = possibleJudge.keys.first ?? -1
    }

    for (key,value) in zip(tbl.keys, tbl.values){
        if value.isEmpty{
            continue
        }
        var trusts = Set(value)
        if(!trusts.contains(judge)){
            return -1
        }
    }
        
    
    return judge
}