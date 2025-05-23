//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    var result = [[Int]]()
    var path = [Int]()
    var sum = 0

    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        backtracking(k, n, startIndex: 1)
        return result
    }

    func backtracking(_ k: Int, _ n: Int, startIndex: Int) {
        if path.count > k {
            return
        }
        if sum > n {
            return
        }
        if sum == n && path.count == k {
            result.append(path)
            return
        }

        guard startIndex <= 9 else { return }

        for i in startIndex ... 9 {
            path.append(i)
            sum += i
            backtracking(k, n, startIndex: i + 1)
            path.removeLast()
            sum -= i
        }
    }
}
