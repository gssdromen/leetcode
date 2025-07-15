//
//  main.swift
//  main
//
//  Created by cedricwu on 7/15/25.
//

import Foundation

class Solution {
    var result: [[Int]] = []
    var path: [Int] = []
    var used: [Bool] = []

    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        used = Array(repeating: false, count: nums.count)
        backtracking(nums: nums)
        return result
    }
    
    func backtracking(nums: [Int]) {
        if path.count == nums.count {
            if !result.contains(path) {
                result.append(path)
            }
            return
        }
        
        for i in 0 ..< nums.count {
            if used[i] == false {
                path.append(nums[i])
                used[i] = true
                backtracking(nums: nums)
                _ = path.popLast()
                used[i] = false
            }
        }
    }
}

let s = Solution()
print(s.permuteUnique([1,1,2]))
