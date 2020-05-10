/* Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.
For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number
of candies among them. Notice that multiple kids can have the greatest number of candies. */
    var maxElem: Int = 0 
    var ans : [Bool] = [] 
    
    if let mx = candies.max() {
        maxElem = mx
    }

    candies.forEach {
        if $0 + extraCandies >= maxElem{
            ans.append(true)
        } else {
            ans.append(false)
        }
    }
    
    return ans
}