//
//  main.swift
//  main
//
//  Created by cedricwu on 7/16/25.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let list = Array(String(x))
        var left = 0
        var right = list.count - 1
        while left < right {
            if list[left] == list[right] {
                left += 1
                right -= 1
            } else {
                return false
            }
        }
        return true
    }
}

let s = Solution()
print(s.isPalindrome(-121))
