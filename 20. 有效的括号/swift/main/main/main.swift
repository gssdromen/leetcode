//
//  main.swift
//  main
//
//  Created by cedricwu on 7/7/25.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        let list = Array(s)
        for ch in list {
            let chStr = String(ch)
            if chStr == "[" || chStr == "{" || chStr == "(" {
                stack.append(chStr)
            } else if chStr == "}" {
                if stack.last == "{" {
                    _ = stack.popLast()
                } else {
                    return false
                }
            } else if chStr == "]" {
                if stack.last == "[" {
                    _ = stack.popLast()
                } else {
                    return false
                }
            } else if chStr == ")" {
                if stack.last == "(" {
                    _ = stack.popLast()
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
