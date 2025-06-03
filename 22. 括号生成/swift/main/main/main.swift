//
//  main.swift
//  main
//
//  Created by cedricwu on 6/3/25.
//

import Foundation

class Solution {
    var result = [String]()
    var path = ""
    
    func generateParenthesis(_ n: Int) -> [String] {
        backtrack(n: n)
        return result
    }
    
    func backtrack(n: Int) {
        if path.count == n * 2 {
            if isValid(str: path) {
                result.append(path)
                return
            } else {
                return
            }
        }
        
        path.append("(")
        backtrack(n: n)
        _ = path.popLast()
        path.append(")")
        backtrack(n: n)
        _ = path.popLast()
    }
    
    func isValid(str: String) -> Bool {
        let list = Array(str)
        var stack = [String]()
        for item in list {
            let tmp = String(item)
            if tmp == "(" {
                stack.append(tmp)
            }
            if tmp == ")" {
                if stack.last == "(" {
                    _ = stack.popLast()
                } else {
                    stack.append(tmp)
                }
            }
        }
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }
}

let s = Solution()
print(s.generateParenthesis(3))
