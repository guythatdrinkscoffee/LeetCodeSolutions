/* 
There is a robot starting at position (0, 0), the origin, on a 2D plane. Given a sequence of its moves, judge if this robot ends up at (0, 0) 
after it completes its moves.The move sequence is represented by a string, and the character moves[i] represents its ith move. 
Valid moves are R (right), L (left), U (up), and D (down). If the robot returns to the origin after it finishes all of its moves, return true. Otherwise, return false.
 */
struct Coord {
    var x:  Int
    var y:  Int
    
}

func judgeCircle(_ moves: String) -> Bool {
    var coordinates = Coord(x: 0, y: 0)

    for char in moves{
        switch char {
        case "U": coordinates.y += 1 
            break
        case "D": coordinates.y -= 1 
            break
        case "R": coordinates.x += 1 
            break
        case "L": coordinates.x -= 1 
            break 
        default: break            
        }
    }

    return coordinates.x == 0 && coordinates.y == 0
}