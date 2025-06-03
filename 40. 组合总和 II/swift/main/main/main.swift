//
//  main.swift
//  main
//
//  Created by cedricwu on 6/3/25.
//

import Foundation

class Solution {
    var result = [[Int]]()
    var path = [Int]()
    var used = [Bool]()
    var sum = 0
    
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        used = Array(repeating: false, count: candidates.count)
        let list = candidates.sorted()
        backtracking(candidates: list, target: target, startIndex: 0)
        return result
    }
    
    func backtracking(candidates: [Int], target: Int, startIndex: Int) {
        if sum == target {
            if !result.contains(path.sorted()) {
                result.append(path.sorted())
            }
            
            return
        }
        if sum > target {
            return
        }
        
        for i in startIndex ..< candidates.count {
            if i > 0 && candidates[i] == candidates[i - 1] && used[i-1] == false {
                continue
            }
            let num = candidates[i]
            if num > target {
                continue
            }
            sum += num
            used[i] = true
            path.append(num)
            backtracking(candidates: candidates, target: target, startIndex: i + 1)
            sum -= num
            used[i] = false
            _ = path.popLast()
        }
    }
}

let s = Solution()
print(s.combinationSum2([10,1,2,7,6,1,5], 8))
