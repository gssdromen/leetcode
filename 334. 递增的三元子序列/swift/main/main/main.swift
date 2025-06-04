//
//  main.swift
//  main
//
//  Created by cedricwu on 6/3/25.
//

import Foundation

class Solution {
    
    func increasingTriplet(_ nums: [Int]) -> Bool {
        for i in 0 ..< nums.count {
            if i + 1 < nums.count && i + 2 < nums.count {
                let left = nums[i]
                let mid = nums[i+1]
                let right = nums[i+2]
                if left < mid && mid < right {
                    return true
                }
            }
        }
        
        return false
    }
}
