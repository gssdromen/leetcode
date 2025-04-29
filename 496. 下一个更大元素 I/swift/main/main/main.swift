//
//  main.swift
//  main
//
//  Created by ByteDance on 4/29/25.
//

import Foundation

class Solution {
    // 单调栈
    var result = [Int]()
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        for _ in 0 ..< nums1.count {
            result.append(-1)
        }

        var locationList = [Int: Int]()
        for i in 0 ..< nums2.count {
            locationList[nums2[i]] = i
        }

        for i in 0 ..< nums1.count {
            let num = nums1[i]
            if let loc = locationList[num] {
                for j in loc ..< nums2.count {
                    if nums2[j] > num {
                        result[i] = nums2[j]
                        break
                    }
                }
            }
        }

        return result
    }
}

let s = Solution()
print(s.nextGreaterElement([4,1,2], [1,3,4,2]))
