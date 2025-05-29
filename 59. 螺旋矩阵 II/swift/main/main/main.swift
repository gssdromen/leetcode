//
//  main.swift
//  main
//
//  Created by cedricwu on 5/29/25.
//

import Foundation

class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var result = [[Int]]()
        for _ in 0 ..< n {
            let arr = Array(repeating: 0, count: n)
            result.append(arr)
        }
        
        var left = 0
        var right = n - 1
        var top = 0
        var bottom = n - 1
        
        var num = 1
        
        while num <= n * n {
            for i in stride(from: left, through: right, by: 1) {
                result[top][i] = num
                num += 1
            }
            top += 1
            for i in stride(from: top, through: bottom, by: 1) {
                result[i][right] = num
                num += 1
            }
            right -= 1
            for i in stride(from: right, through: left, by: -1) {
                result[bottom][i] = num
                num += 1
            }
            bottom -= 1
            for i in stride(from: bottom, through: top, by: -1) {
                result[i][left] = num
                num += 1
            }
            left += 1
        }
        
        return result
    }
}

let s = Solution()
print(s.generateMatrix(3))
