import UIKit

class Solution {
    var dp = [Int: Int]()

    init() {
        dp[0] = 1
        dp[1] = 1
        dp[2] = 2
        dp[3] = 3
    }

    func climbStairs(_ n: Int) -> Int {
        if dp[n] != nil {
            return dp[n]!
        }
        dp[n - 1] = climbStairs(n - 1)
        dp[n - 2] = climbStairs(n - 2)
        return dp[n - 1]! + dp[n - 2]!
    }
    
    func climbStairs2(_ n: Int) -> Int {
        var dp2 = [Int](repeating: 0, count: n+1)
        dp2[0] = 1
        dp2[1] = 1
        if n <= 1 {
            return dp2[n]
        }
        for i in 2 ... n {
            dp2[i] = dp2[i - 1] + dp2[i - 2]
        }
        return dp2[n]
    }
}

let s = Solution()
s.climbStairs2(3)
