class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result: [Int] = []
        var discountNotFound = true
        for oItr in 0..<prices.count {
            discountNotFound = true
            for iItr in oItr+1..<prices.count {
                if (prices[iItr] <= prices[oItr]) {
                    result.append((prices[oItr] - prices[iItr]))
                    discountNotFound = false
                    break
                }
            }
            if discountNotFound {
                result.append(prices[oItr])
            }
        }
        
        return result
    }
}