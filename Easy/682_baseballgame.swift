/* You're now a baseball game point recorder.
Given a list of strings, each string can be one of the 4 following types:
1. Integer (one round's score): Directly represents the number of points you get in this round.
2. "+" (one round's score): Represents that the points you get in this round are the sum of the last two valid round's points.
3. "D" (one round's score): Represents that the points you get in this round are the doubled data of the last valid round's points.
4. "C" (an operation, which isn't a round's score): Represents the last valid round's points you get were invalid and should be removed.
Each round's operation is permanent and could have an impact on the round before and the round after.

You need to return the sum of the points you could get in all the rounds. */

func calPoints(_ ops: [String]) -> Int {
    var s = [Int]()
    var sum = 0

    for op in ops{
        if op == "+"{
            if let first = s.popLast(), let second = s.popLast(){
                s.append(second)
                s.append(first)
                s.append(second + first)
                sum += (second + first)
            }
        } else if op == "D" {
            if let top = s.last {
                sum += (top * 2)
                s.append(top * 2)
            }
        } else if op == "C" {
            if let top = s.last{
                sum -= top
                s.removeLast()
            }
        } else {
            if let num = Int(op){
                s.append(num)
                sum += num
            }
        }
    }

    return sum
}