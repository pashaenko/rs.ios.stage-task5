import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var result = 0
                
                for (i, currentValue) in prices.enumerated() {
                    var maxValue = 0
                    
                    for j in i...prices.count - 1 {
                        if prices[j] > maxValue {
                            maxValue = prices[j]
                        }
                    }
                    
                    result += maxValue - currentValue
                }
            
                return result
            }
}
