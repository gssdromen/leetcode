//
//  main.swift
//  main
//
//  Created by cedricwu on 5/31/25.
//

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else {
            return
        }
        var slow = 0
        var fast = 0
        
        while fast < nums.count {
            if nums[fast] != 0 {
                swap(nums: &nums, x: slow, y: fast)
                slow += 1
                fast += 1
            } else {
                fast += 1
            }
        }
    }
    
    func swap(nums: inout [Int], x: Int, y: Int) {
        let temp = nums[x]
        nums[x] = nums[y]
        nums[y] = temp
    }
}

let s = Solution()
var list = [0,1,0,3,12]
s.moveZeroes(&list)
print(list)
