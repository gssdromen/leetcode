//
//  main.swift
//  main
//
//  Created by cedricwu on 5/30/25.
//

import Foundation

class Solution {
    let all = ["a", "e", "i", "o", "u"]
    func reverseVowels(_ s: String) -> String {
        var list = Array(s)
        
        var left = 0
        var right = list.count - 1
        var leftFlag = false
        var rightFlag = false
        while left < right {
            if all.contains(list[left].lowercased()) {
                leftFlag = true
            } else {
                left += 1
                leftFlag = false
            }
            if all.contains(list[right].lowercased()) {
                rightFlag = true
            } else {
                right -= 1
                rightFlag = false
            }
            if leftFlag && rightFlag {
                let tmp = list[left]
                list[left] = list[right]
                list[right] = tmp
                leftFlag = false
                rightFlag = false
                left += 1
                right -= 1
            }
        }
        
        return String(list)
    }
}

let s = Solution()

print(s.reverseVowels("IceCreAm"))
