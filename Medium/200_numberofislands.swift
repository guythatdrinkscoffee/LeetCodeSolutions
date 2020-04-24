/* Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by 
water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four 
edges of the grid are all surrounded by water. */
func numIslands(_ grid: [[Character]]) -> Int {
    //make a copy of the grid
    var myGrid = grid

    var numberOfIslands = 0

    //Iterate trough the grid
    for i in 0..<grid.count{
        for j in 0..<grid[i].count{
            //when we find a "1" we bfs with that (i,j) as the root
            if myGrid[i][j] == "1" {
                numberOfIslands += bfs(&myGrid, i, j);
            }
        }
    }

    return numberOfIslands
}

func bfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) -> Int {
    var Queue = [[Int]]() 
    let possibleNeighbors = [[1,0],[-1,0],[0,-1],[0,1]]
    Queue.insert([i,j], at: 0)

    while !Queue.isEmpty {
        let currentPos = Queue.removeLast()

        for neighbor in possibleNeighbors {
            let indexI = currentPos[0] + neighbor[0] 
            let indexJ = currentPos[1] + neighbor[1]

            if(indexI < 0 || indexI >= grid.count || indexJ < 0  || indexJ >= grid[i].count || grid[indexI][indexJ] == "0"){
                continue
            }

            grid[indexI][indexJ] = "0"
            Queue.insert([indexI,indexJ], at: 0)
        }
    }

    return 1
}