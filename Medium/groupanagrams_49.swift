/* Given an array of strings, group anagrams together.  */
func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.count < 1{
        return []
    }
    
    var tbl = [String: [String]]()
    var groups = [[String]]()
    
    for s in strs {
        var sortedS = String(s.sorted())
        if tbl[sortedS] == nil {
            tbl[sortedS] = [s]
        } else {
            tbl[sortedS] = tbl[sortedS]! + [s]
        }
    }
    
    for value in tbl.values {
        groups.append(value)
    }
    
    return groups
}