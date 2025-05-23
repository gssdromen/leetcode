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

    func subsets(_ nums: [Int]) -> [[Int]] {
        backtracking(nums: nums, startIndex: 0)
        return result
    }

    func backtracking(nums: [Int], startIndex: Int) {
        result.append(path)
        for i in startIndex ..< nums.count {
            path.append(nums[i])
            backtracking(nums: nums, startIndex: i + 1)
            path.removeLast()
        }
    }
}

let s = Solution()
print(s.subsets([1,2,3]))
