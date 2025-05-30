//
//  main.swift
//  main
//
//  Created by cedricwu on 5/31/25.
//

import Foundation

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        var result = [[Int]]()
        let list1 = Array(text1)
        let list2 = Array(text2)
        
        for _ in 0 ... list2.count {
            let arr = Array(repeating: 0, count: list1.count + 1)
            result.append(arr)
        }
        
        for m in 1 ... list1.count {
            for n in 1 ... list2.count {
                if list1[m - 1] == list2[n - 1] {
                    result[n][m] = result[n - 1][m - 1] + 1
                } else {
                    result[n][m] = max(result[n][m - 1], result[n - 1][m])
                }
            }
        }

        print(result)
        return result[list2.count][list1.count]
    }
}

let s = Solution()
print(s.longestCommonSubsequence("abcde", "ace"))
