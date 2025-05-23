//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    var dp = [Int: Int]()
    func fib(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        dp[0] = 0
        dp[1] = 1
        for i in 2 ... n {
            dp[i] = dp[i - 1]! + dp[i - 2]!
        }
        return dp[n]!
    }
}

let s = Solution()

print(s.fib(10))
