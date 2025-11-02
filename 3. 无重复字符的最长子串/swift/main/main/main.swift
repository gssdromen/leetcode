//
//  main.swift
//  main
//
//  Created by cedricwu on 11/2/25.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var left = 0
        var result = 0
        var charSet = [Character]()
        
        for right in 0 ..< chars.count {
            let c = chars[right]
            if charSet.contains(c) {
                result = max(result, right - left)
                while charSet.contains(c) {
                    charSet.removeFirst()
                    left += 1
                }
                charSet.append(c)
            } else {
                charSet.append(c)
            }
        }
        if !charSet.isEmpty {
            result = max(result, charSet.count)
        }
        
        return result
    }
}

let s = Solution()
print(s.lengthOfLongestSubstring(" "))
