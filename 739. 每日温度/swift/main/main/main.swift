//
//  main.swift
//  main
//
//  Created by ByteDance on 4/29/25.
//

import Foundation

class Solution {
    // 单调栈
    var stack = [Int]()
    var result = [Int]()
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        for _ in 0 ..< temperatures.count {
            result.append(0)
        }
        for i in 0 ..< temperatures.count {
            if stack.isEmpty {
                stack.append(i)
            } else {
                while !stack.isEmpty {
                    if let index = stack.last {
                        if temperatures[index] < temperatures[i] {
                            result[index] = i - index
                            stack.removeLast()
                        } else {
                            break
                        }
                    }
                }
                stack.append(i)
            }
        }

        return result
    }
}

let s = Solution()
print(s.dailyTemperatures([73,74,75,71,69,72,76,73]))
