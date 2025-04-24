//
//  main.swift
//  main
//
//  Created by cedricwu on 4/24/25.
//

import Foundation

class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var l = 0
        var result = Int.max
        var sum = 0
        
        for r in 0 ..< nums.count {
            sum += nums[r]
            
            if sum >= target {
                if r - l < result {
                    result = r - l
                }
                
                while l < r {
                    sum -= nums[l]
                    l += 1
                    if sum >= target {
                        if r - l < result {
                            result = r - l
                        }
                    } else {
                        break
                    }
                    
                    
                }
            }
        }
        
        if result == Int.max {
            return 0
        }
        return result + 1
    }
}

let s = Solution()

let a = s.minSubArrayLen(7, [2,3,1,2,4,3])

print(a)
