/* Given n and m which are the dimensions of a matrix initialized by zeros and given an array indices where 
indices[i] = [ri, ci]. For each pair of [ri, ci] you have to increment all cells in row ri and column ci by 1. */
import Foundation
func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
    var count = 0
    var matrix = Array(repeating: Array(repeating: 0, count: m), count: n)
    for arr in indices {
        let rowInc = arr[0]
        let colInc = arr[1]

        for i in 0..<matrix[rowInc].count {
            matrix[rowInc][i] += 1
        }

        for j in 0..<matrix.count {
            matrix[j][colInc] += 1
        }
    }
    matrix.map {
        $0.map {
            if $0 % 2 == 1 {
                count += 1
            }
        }
    }
    return count
}
