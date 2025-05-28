//
//  main.swift
//  main
//
//  Created by cedricwu on 5/27/25.
//

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var left = 0
        var right = 0
        var result = [Int]()
        
        guard nums2.count > 0 else {
            return
        }
        
        while left < m || right < n {
            if left >= m {
                result.append(nums2[right])
                right += 1
                continue
            }
            if right >= n {
                result.append(nums1[left])
                left += 1
                continue
            }
            if nums1[left] <= nums2[right] {
                result.append(nums1[left])
                left += 1
            } else {
                result.append(nums2[right])
                right += 1
            }
        }
        nums1 = result

    }
}

let s = Solution()
var num1: [Int] = [2,0]
var num2: [Int] = [1]
s.merge(&num1, 1, num2, 1)

print(num1)
