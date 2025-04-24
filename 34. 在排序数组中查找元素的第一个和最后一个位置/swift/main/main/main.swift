//
//  main.swift
//  main
//
//  Created by ByteDance on 4/24/25.
//

import Foundation



class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2

            if nums[mid] < target {
                left = mid + 1
                continue
            } else if nums[mid] > target {
                right = mid - 1
                continue
            }

            var l = mid
            var r = mid

            for i in (0 ..< mid).reversed() {
                if nums[i] == target {
                    l = i
                } else {
                    break
                }
            }
            for i in mid ..< nums.count {
                if nums[i] == target {
                    r = i
                } else {
                    break
                }
            }
            return [l, r]
        }

        return [-1, -1]
    }
}
