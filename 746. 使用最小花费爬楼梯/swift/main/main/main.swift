//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    // 从第i个台阶开始，前面累计要多少cost
    var dp = [Int: Int]()
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        dp[0] = 0
        dp[1] = 0

        for i in 2 ... cost.count {
            let num1 = dp[i - 1]! + cost[i - 1]
            let num2 = dp[i - 2]! + cost[i - 2]
            dp[i] = min(num1, num2)
        }

        return dp[cost.count]!
    }
}

let s = Solution()
print(s.minCostClimbingStairs([10,15,20]))
