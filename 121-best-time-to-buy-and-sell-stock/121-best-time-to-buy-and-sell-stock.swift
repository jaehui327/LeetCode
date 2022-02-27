class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var best = 0
        var min = prices[0]
        
        for price in prices {
            if price < min {
                min = price
            }
            
            let profit = price - min
            if best < profit {
                best = profit
            }
        }
        
        return best
    }
}