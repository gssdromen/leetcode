import UIKit

class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        let rowCount = matrix.count
        guard rowCount > 0 else {
            return 0
        }
        let columnCount = matrix[0].count
        
        let rowList = [Int](repeating: 0, count: columnCount)
        var dp = [[Int]](repeating: rowList, count: rowCount)
        
        var max = 0
        
        for i in 0 ..< rowCount {
            for j in 0 ..< columnCount {
                if matrix[i][j] == Character("1") {
                    if i == 0 || j == 0 {
                        dp[i][j] = 1
                        if 1 > max {
                            max = 1
                        }
                    } else {
                        let count = min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]) + 1
                        if count > max {
                            max = count
                        }
                        dp[i][j] = count
                    }
                } else {
                    dp[i][j] = 0
                }
            }
        }
        
        return max * max
    }
}
