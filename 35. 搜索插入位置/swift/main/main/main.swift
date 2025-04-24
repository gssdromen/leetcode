//
//  main.swift
//  main
//
//  Created by ByteDance on 4/24/25.
//

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = left + ((right - left) / 2)
            if nums[mid] < target {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                return mid
            }
        }
        return right + 1
    }
}

let s = Solution()

print(s.searchInsert([1,3,5,6], 5))
