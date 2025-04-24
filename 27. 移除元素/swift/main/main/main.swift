//
//  main.swift
//  main
//
//  Created by ByteDance on 4/24/25.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            if nums[left] == val {
                let tmp = nums[right]
                nums[right] = nums[left]
                nums[left] = tmp
                right -= 1
            } else {
                left += 1
            }
        }

        return right + 1
    }
}

