//
//  main.swift
//  main
//
//  Created by cedricwu on 6/1/25.
//

import Foundation

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0 && t.count == 0 {
            return true
        }
        if s.count == 0 {
            return true
        }
        if t.count == 0 && s.count > 0 {
            return false
        }
        var result = [[Bool]]()
        var list1 = Array(s)
        var list2 = Array(t)
        // 行
        var m = list2.count
        // 列
        var n = list1.count
        
        for _ in 0 ... list2.count {
            let line = Array(repeating: false, count: list1.count + 1)
            result.append(line)
        }
        // 第一列全部初始化为true
        for i in 0 ... list2.count {
            result[i][0] = true
        }
//        
//        for item in result {
//            print(item)
//        }
        
        for row in 1 ... list2.count {
            for col in 1 ... list1.count {
                if list1[col - 1] == list2[row - 1] {
                    result[row][col] = result[row - 1][col - 1]
                } else {
                    result[row][col] = result[row - 1][col]
                }
            }
        }

//        print("==================")
//        for item in result {
//            print(item)
//        }
        return result[list2.count][list1.count]
    }
}

let s = Solution()
//print(s.isSubsequence("abc", "ahbgdc"))
//print(s.isSubsequence("axc", "ahbgdc"))
//print(s.isSubsequence("", "ahbgdc"))
//print(s.isSubsequence("abc", ""))
print(s.isSubsequence("twn", "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxtxxxxxxxxxxxxxxxxxxxxwxxxxxxxxxxxxxxxxxxxxxxxxxn"))
