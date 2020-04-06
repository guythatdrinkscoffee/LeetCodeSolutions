/* Say you have an array for which the ith element is the price of a given stock on day i.
Design an algorithm to find the maximum profit. You may complete as many transactions as
you like (i.e., buy one and sell one share of the stock multiple times). */
func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0 
    var i = 1
    var prev = 0
    
    while i < prices.count{
        if prices[i] > prices[prev]{
            profit += prices[i] - prices[prev]
        }
        i += 1
        prev += 1
    }
    
    return profit
}