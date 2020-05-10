import UIKit

class Solution {
    func mincostTickets(_ days: [Int], _ costs: [Int]) -> Int {
        guard days.count > 0 else {
            return 0
        }
        
        let daySet = Set.init(days)
        
        let cost1 = costs[0]
        let cost7 = costs[1]
        let cost30 = costs[2]
        
        // dp表示从第X天开始完成计划要用的最少的金额
        var dp = [Int](repeating: 0, count: days.last! + 31)
        
        for i in (1 ..< dp.count).reversed() {
            if daySet.contains(i) {
                let costType1 = cost1 + dp[i + 1]
                let costType2 = cost7 + dp[i + 7]
                let costType3 = cost30 + dp[i + 30]
                
                dp[i] = min(costType1, costType2, costType3)
            } else {
                if i + 1 < dp.count {
                    dp[i] = dp[i + 1]
                } else {
                    dp[i] = 0
                }
            }
        }

        return dp[1]
    }
}

let s = Solution()
print(s.mincostTickets([1,4,6,7,8,20], [2,7,15]))
