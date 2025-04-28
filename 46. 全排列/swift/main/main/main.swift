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
    var used = [Int: Bool]()

    func permute(_ nums: [Int]) -> [[Int]] {
        backtracking(nums)
        return result
    }

    func backtracking(_ nums: [Int]) {
        if path.count == nums.count {
            result.append(path)
            return
        }

        for i in 0 ..< nums.count {
            let num = nums[i]
            if used[num] == true {
                continue
            }
            path.append(num)
            used[num] = true
            backtracking(nums)
            used[num] = false
            path.removeLast()
        }
    }
}

