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

    func findSubsequences(_ nums: [Int]) -> [[Int]] {
        backtracking(nums, startIndex: 0)
        return result
    }

    func backtracking(_ nums: [Int], startIndex: Int) {
        if path.count > 1 {
            result.append(path)
        }
        var set = Set<Int>()
        for i in startIndex ..< nums.count {
            let num = nums[i]
            if set.contains(num) {
                continue
            }
            if let lastNum = path.last {
                if num >= lastNum {
                    path.append(num)
                } else {
                    continue
                }
            } else {
                path.append(num)
            }
            set.insert(num)
            backtracking(nums, startIndex: i + 1)
            path.removeLast()
        }
    }
}

let s = Solution()
print(s.findSubsequences([4, 6, 7, 7]))
