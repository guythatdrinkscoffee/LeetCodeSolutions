//Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
func sortedSquares(_ A: [Int]) -> [Int] {
    let squares = A.map{$0 * $0}
    return squares.sorted(by:{$0 < $1})
}

