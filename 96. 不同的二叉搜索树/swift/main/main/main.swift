//
//  main.swift
//  main
//
//  Created by cedricwu on 6/1/25.
//

import Foundation

class Solution {
    func numTrees(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n+1)
        dp[0] = 1
        dp[1] = 1
        
        guard n > 1 else {
            return dp[n]
        }
        
        // 求dp[2], dp[3], 求到n为止
        for i in 2 ... n {

            for j in 1 ... i {
                dp[i] += dp[j-1] * dp[i-j]
            }
        }
        return dp[n]
    }
}

let s = Solution()
print(s.numTrees(3))
