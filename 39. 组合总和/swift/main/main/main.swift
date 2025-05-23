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

    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        backtracking(candidates, target, startIndex: 0)
        return result
    }

    func backtracking(_ candidates: [Int], _ target: Int, startIndex: Int) {
        if sum == target {
            result.append(path)
            return
        }
        if sum > target {
            return
        }
        for i in startIndex ..< candidates.count {
            let num = candidates[i]
            sum += num
            path.append(num)
            backtracking(candidates, target, startIndex: i)
            sum -= num
            path.removeLast()
        }
    }
}
