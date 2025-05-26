//
//  main.swift
//  main
//
//  Created by cedricwu on 5/26/25.
//

import Foundation

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        let sortedNums = nums.sorted()
        
        guard sortedNums.count >= 3 else {
            return result
        }
        
        for i in 0 ..< sortedNums.count {
            let num = sortedNums[i]
            if num > 0 {
                break
            } else {
                var left = i + 1
                var right = sortedNums.count - 1
                while left < right {
                    if num + sortedNums[left] + sortedNums[right] == 0 {
                        let item = [num, sortedNums[left], sortedNums[right]]
                        if !result.contains(item) {
                            result.append(item)
                        }
                        right -= 1
                        left += 1
                    } else if num + sortedNums[left] + sortedNums[right] > 0 {
                        right -= 1
                    } else if num + sortedNums[left] + sortedNums[right] < 0 {
                        left += 1
                    }
                }
            }
        }
        
        return result
    }
}

let s = Solution()
print(s.threeSum([-1,0,1,2,-1,-4]))
