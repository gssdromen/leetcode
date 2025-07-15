//
//  main.swift
//  main
//
//  Created by cedricwu on 7/8/25.
//

import Foundation

class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var list1 = [Int]()
        var list2 = [Int]()
        
        for num1 in nums1 {
            var found = false
            for num2 in nums2 {
                if num1 == num2 {
                    found = true
                    break
                }
            }
            if !found && !list1.contains(num1) {
                list1.append(num1)
            }
        }
        
        for num2 in nums2 {
            var found = false
            for num1 in nums1 {
                if num1 == num2 {
                    found = true
                    break
                }
            }
            if !found && !list2.contains(num2) {
                list2.append(num2)
            }
        }
        
        return [list1, list2]
    }
}

let s = Solution()
print(s.findDifference([1,2,3], [2,4,6]))
