//
//  main.swift
//  main
//
//  Created by cedricwu on 5/31/25.
//

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let w = right - left
            let h = min(height[left], height[right])
            let area = w * h
            
            result = max(result, area)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return result
    }
}

let s = Solution()
print(s.maxArea([1,8,6,2,5,4,8,3,7]))
