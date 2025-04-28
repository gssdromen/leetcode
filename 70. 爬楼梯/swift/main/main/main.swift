//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    var dp = [Int: Int]()
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 {
            return n
        }
        dp[1] = 1
        dp[2] = 2
        dp[3] = 3
        for i in 4 ... n {
            dp[i] = dp[i - 1]! + dp[i - 2]!
        }
        return dp[n]!
    }
}

