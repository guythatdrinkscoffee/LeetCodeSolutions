//Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
func plusOne(_ digits: [Int]) -> [Int] {
    var currentDigit = digits.count - 1
    var digitsCopy = digits
    while currentDigit > -1 {
      if digitsCopy[currentDigit] == 9 {
          digitsCopy[currentDigit] = 0
          if currentDigit == 0 {
              digitsCopy[currentDigit] = 1
              digitsCopy.append(0)
          }
          currentDigit -= 1
          continue
      }
      digitsCopy[currentDigit] += 1
      break
    }
    return digitsCopy
}
