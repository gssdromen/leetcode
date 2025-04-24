//
//  main.swift
//  main
//
//  Created by cedricwu on 4/24/25.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return 1
        }
        
        var left = 0
        var right = 1
        
        while right < nums.count {
            if nums[left] >= nums[right] {
                right += 1
            } else {
                left += 1
                swap(&nums, i: left, j: right)
            }
        }
        
        return left + 1
    }
    
    func swap(_ nums: inout [Int], i: Int, j: Int) {
        let tmp = nums[i]
        nums[i] = nums[j]
        nums[j] = tmp
    }
}

let s = Solution()
var list = [0,0,1,1,1,2,2,3,3,4]
print(s.removeDuplicates(&list))
print(list)
