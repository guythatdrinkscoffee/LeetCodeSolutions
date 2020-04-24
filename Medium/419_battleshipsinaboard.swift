/* Given an 2D board, count how many battleships are in it. The battleships are represented with 'X's, empty slots are represented with '.'s. 
You may assume the following rules:
1. You receive a valid board, made of only battleships or empty slots.
2. Battleships can only be placed horizontally or vertically. In other words, they can only be made of the shape 1xN (1 row, N columns) or Nx1 (N rows, 1 column), 
    where N can be of any size.
3. At least one horizontal or vertical cell separates between two battleships - there are no adjacent battleships. */
func countBattleships(_ board: [[Character]]) -> Int {
    var myBoard = board
    var numOfShips = 0
    
    for i in 0..<myBoard.count{
        for j in 0..<myBoard[i].count {
            if myBoard[i][j] == "X" {
                numOfShips += exploreBoard(&myBoard, i, j)
            }
        }
    }
    
    return numOfShips
}

func exploreBoard(_ board: inout [[Character]],_ i: Int,_ j: Int) -> Int {
    var Q = [[Int]]()
    let adjacent = [[1,0],[0,1]]
    
    Q.insert([i,j], at: 0)
    
    while !Q.isEmpty {
        let currPos = Q.removeLast()
        
        for adj in adjacent {
            let idxI = currPos[0] + adj[0]
            let idxJ = currPos[1] + adj[1]
            
            if idxI < 0 || idxI >= board.count || idxJ < 0 || idxJ >= board[i].count || board[idxI][idxJ] == "." {
                continue
            }
            
            board[idxI][idxJ] = "."
            Q.insert([idxI,idxJ], at: 0)
        }
    }
    
    return 1
}