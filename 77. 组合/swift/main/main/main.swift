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

    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        backtracking(n: n, k: k, startIndex: 1)

        return result
    }

    func backtracking(n: Int, k: Int, startIndex: Int) {
        if path.count == k {
            result.append(path)
            return
        }
        guard startIndex <= n else { return }
        for i in startIndex ... n {
            path.append(i)
            backtracking(n: n, k: k, startIndex: i + 1)
            _ = path.popLast()
        }
    }
}

let s = Solution()
print(s.combine(4, 2))
