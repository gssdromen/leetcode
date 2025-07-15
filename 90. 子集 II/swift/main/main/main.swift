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

    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        used = Array(repeating: false, count: nums.count)
        backtracking(nums: nums.sorted(), startIndex: 0)
        return result
    }
    
    private func backtracking(nums: [Int], startIndex: Int) {
        result.append(path)
        
        for i in startIndex ..< nums.count {
            // used[i - 1] == true，说明同一树枝candidates[i - 1]使用过
            // used[i - 1] == false，说明同一树层candidates[i - 1]使用过
            // 而我们要对同一树层使用过的元素进行跳过
            if i > 0 && nums[i] == nums[i - 1] && used[i - 1] == false {
                continue
            }
            if used[i] == false {
                let num = nums[i]
                path.append(num)
                used[i] = true
                
                backtracking(nums: nums, startIndex: i + 1)
                
                _ = path.popLast()
                used[i] = false
            }
        }
    }
}

let s = Solution()
print(s.subsetsWithDup([1,4,3,5,4,4,7,7,8,0]))
