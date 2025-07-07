//
//  main.swift
//  main
//
//  Created by cedricwu on 7/7/25.
//

import Foundation

class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result: [String] = []
        var startIndex: Int?
        for i in 0 ..< nums.count {
            if startIndex == nil {
                startIndex = i
                continue
            } else {
                if nums[i] - nums[i-1] == 1 {
                    // 符合
                    continue
                } else {
                    // 不符合
                    if i == startIndex! + 1 {
                        let left = nums[startIndex!]
                        let str = "\(left)"
                        result.append(str)
                        startIndex = i
                    } else {
                        let left = nums[startIndex!]
                        let right = nums[i - 1]
                        let str = "\(left)->\(right)"
                        result.append(str)
                        startIndex = i
                    }
                }
            }
        }
        if let startIndex {
            if startIndex == nums.count - 1 {
                let left = nums[startIndex]
                let str = "\(left)"
                result.append(str)
            } else {
                let left = nums[startIndex]
                let right = nums[nums.count - 1]
                let str = "\(left)->\(right)"
                result.append(str)
            }
        }
        return result
    }
}

let s = Solution()
print(s.summaryRanges([0,2,3,4,6,8,9]))
