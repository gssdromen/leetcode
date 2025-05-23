//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    // key为二维数组，为坐标
    // val为到这个点的路径数量
    var dp = [[Int]: Int]()
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        for i in 0 ..< m {
            let pos = [i, 0]
            dp[pos] = 1
        }
        for i in 0 ..< n {
            let pos = [0, i]
            dp[pos] = 1
        }
        for i in 1 ..< m {
            for j in 1 ..< n {
                let pos = [i, j]
                let posUp = [i - 1, j]
                let posLeft = [i, j - 1]
                dp[pos] = dp[posUp]! + dp[posLeft]!
            }
        }

        let p = [m - 1, n - 1]
        return dp[p]!
    }
}

let s = Solution()
print(s.uniquePaths(3, 7))
