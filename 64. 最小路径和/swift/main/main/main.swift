//
//  main.swift
//  main
//
//  Created by cedricwu on 7/17/25.
//

import Foundation

class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let rowCount = grid.count
        let colCount = grid.first!.count
        
        /// 到这个格子的最小和
        var dp: [[Int]] = []
        for _ in 0 ..< rowCount {
            let arr = Array(repeating: 0, count: colCount)
            dp.append(arr)
        }
        
        // 赋值第一行第一列
        for i in 0 ..< colCount {
            if i == 0 {
                dp[0][i] = grid[0][i]
            } else {
                dp[0][i] = dp[0][i - 1] + grid[0][i]
            }
        }
        for i in 0 ..< rowCount {
            if i == 0 {
                dp[i][0] = grid[i][0]
            } else {
                dp[i][0] = dp[i - 1][0] + grid[i][0]
            }
        }
        for row in 1 ..< rowCount {
            for col in 1 ..< colCount {
                dp[row][col] = min(dp[row-1][col], dp[row][col-1]) + grid[row][col]
            }
        }
        return dp[rowCount - 1][colCount - 1]
    }
}

let s = Solution()
print(s.minPathSum([[1,3,1],[1,5,1],[4,2,1]]))
