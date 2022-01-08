class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var min = prices.first!
        
        for price in prices {
            if price - min > profit {
                profit = price - min
            }
            if price < min {
                min = price
            }
            
        }
        return profit
    }
}