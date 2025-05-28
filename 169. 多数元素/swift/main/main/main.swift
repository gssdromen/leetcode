//
//  main.swift
//  main
//
//  Created by cedricwu on 5/28/25.
//

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var currentNumber = 0
        var count = 0
        
        for num in nums {
            if count == 0 {
                currentNumber = num
                count = 1
            } else {
                if num == currentNumber {
                    count += 1
                } else {
                    count -= 1
                }
            }
        }
        
        return currentNumber
    }
}

let s = Solution()
print(s.majorityElement([3,2,3]))
