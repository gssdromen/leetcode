//
//  main.swift
//  main
//
//  Created by cedricwu on 5/28/25.
//

import Foundation


class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return true
        }
        var max = 0
        for i in 0 ..< nums.count {
            let step = nums[i]
            if max >= i && i + step > max {
                max = i + step
            }
        }
        return (max + 1) >= nums.count
    }
}

let s = Solution()
print(s.canJump([2,0,0]))
