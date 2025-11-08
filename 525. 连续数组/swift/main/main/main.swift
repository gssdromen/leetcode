//
//  main.swift
//  main
//
//  Created by cedricwu on 11/7/25.
//

import Foundation

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var result = 0;
        // 把所有0换成-1,实现前缀和的算法
        var numList = [Int]()
        for i in 0 ..< nums.count {
            if nums[i] == 0 {
                numList.append(-1)
            } else {
                numList.append(nums[i])
            }
        }
        // key: 前缀和，value：最早出现的Index，这样才能让结果尽可能长
        var record = [Int: Int]()
        var sum = 0
        record[0] = -1
        for (index, value) in numList.enumerated() {
            sum += value
            if let prevIndex = record[sum] {
                result = max(index - prevIndex, result)
            } else {
                record[sum] = index
            }
        }
        return result
    }
}

let s = Solution()
print(s.findMaxLength([0, 1, 0]))
