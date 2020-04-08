//Given an N by M matrix, return the number of negative numbers in the matrix. 
func countNegatives(_ grid: [[Int]]) -> Int {
    var count = 0
    for row in grid {
        for num in row {
            if num <= -1 {
                count += 1
            }
        }
    }
    return count
}
