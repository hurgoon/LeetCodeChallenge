/*
 
 121. Best Time to Buy and Sell Stock
 
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
 
 Note that you cannot sell a stock before you buy one.
 
 Example 1:
 Input: [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Not 7-1 = 6, as selling price needs to be larger than buying price.
 
 Example 2:
 Input: [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 
 */


import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.first != nil else { return 0 }
        
        var min = prices[0]
        var max = 0
        var profits: Array<Int> = []
        
        for i in prices {
            
            i < min ? min = i : nil
            print("min ", "=", min)
            min < i && i > max ? max = i : nil
            print(" max", "=", max)
            print(" ========")
            profits.append(max - min)
        }
    
        print("answer", "=", max == 0 ? 0 : max - min)
        print("profits.max() ?? 0 ", "=", profits.max() ?? 0)
        
        return profits.max() ?? 0
    }
}

let a = Solution()
a.maxProfit([2,4,1])
