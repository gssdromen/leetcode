//
//  main.swift
//  main
//
//  Created by ByteDance on 4/29/25.
//

import Foundation

class Solution {
    // 单调栈
    var sum = 0
    var stack = [Int]()
    func trap(_ height: [Int]) -> Int {
        for i in 0 ..< height.count {
            if stack.isEmpty {
                stack.append(i)
            } else {
                if height[i] == height[stack.last!] {
                    stack.removeLast()
                    stack.append(i)
                } else if height[i] <= height[stack.last!] {
                    stack.append(i)
                } else {
                    while stack.count >= 2 && height[stack.last!] < height[i] {
                        let b = height[stack.last!]
                        stack.removeLast()
                        let lh = height[stack.last!]
                        let rh = height[i]
                        let h = min(lh, rh) - b
                        let w = i - stack.last! - 1
                        sum += w * h
                    }
                    while !stack.isEmpty && height[stack.last!] < height[i] {
                        stack.removeLast()
                    }
                    stack.append(i)
                }
            }
        }

        return sum
    }
}

let s = Solution()
print(s.trap([0,1,0,2,1,0,1,3,2,1,2,1]))
