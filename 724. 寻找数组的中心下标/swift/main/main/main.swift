//
//  main.swift
//  main
//
//  Created by cedricwu on 6/2/25.
//

import Foundation

class Solution {
    func pivotIndex2(_ nums: [Int]) -> Int {
        var result = -1
        
        for i in 0 ..< nums.count {
            var leftSum = 0
            var rightSum = 0
            
            // left
            for m in 0 ..< i {
                leftSum += nums[m]
            }
            for n in i+1 ..< nums.count {
                rightSum += nums[n]
            }
            
            if leftSum == rightSum {
                result = i
                break
            }
        }
        
        return result
    }
    
    func pivotIndex(_ nums: [Int]) -> Int {
        let total = nums.reduce(0) { partialResult, num in
            return partialResult + num
        }
        
        var sumNow = 0
        for i in 0 ..< nums.count {
            let leftSum = sumNow
            let rightSum = total - sumNow - nums[i]
            if leftSum == rightSum {
                return i
            }
            sumNow += nums[i]
        }
        
        return -1
    }
}

let s = Solution()
print(s.pivotIndex([1, 7, 3, 6, 5, 6]))
