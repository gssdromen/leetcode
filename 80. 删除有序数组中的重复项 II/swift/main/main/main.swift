//
//  main.swift
//  main
//
//  Created by cedricwu on 5/28/25.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 2 {
            return nums.count
        }

        var slow = 2
        var fast = 2
        while fast < nums.count {
            if nums[slow - 2] != nums[fast] {
                nums[slow] = nums[fast]
                slow += 1
            }
            fast += 1
        }
        return slow
    }

}

let s = Solution()
var nums = [1,1,1,2]
print(s.removeDuplicates(&nums))
print(nums)
