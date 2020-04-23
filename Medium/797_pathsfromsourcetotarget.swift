/* Given a directed, acyclic graph of N nodes.  Find all possible paths from node 0 to node N-1, and return them in any order. */
var path = [Int]()
var out = [[Int]]()

func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
    var visited = Array(repeating: false, count: graph.count)
    
    dfs(graph,0,graph.count-1,&visited)
    
    return out
}

func dfs(_ G: [[Int]], _ u: Int, _ v: Int, _ visited: inout [Bool]){
    visited[u] = true
    path.append(u)
    
    if u == v {
        out.append(path)
        
    } else {
        for s in G[u] {
            if !visited[s] {
                dfs(G,s,v,&visited)
            }
        }
    }
    
    path.removeLast()
    visited[u] = false
}