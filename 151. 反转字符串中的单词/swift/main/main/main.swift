//
//  main.swift
//  main
//
//  Created by cedricwu on 5/30/25.
//

import Foundation

class Solution {
    func reverseWords(_ s: String) -> String {
        let list = Array(s)
        var result = [String]()
        
        var slow = list.count - 1
        var fast = slow
        
        while slow >= 0 && fast >= 0 {
            if list[slow] == " " {
                slow -= 1
                fast = slow
            } else {
                if list[fast] == " " {
                    // 获取字符串
                    let str = String(list[(fast + 1) ... slow])
                    if str != " " {
                        result.append(str)
                    }
                    slow = fast
                } else {
                    fast -= 1
                }
            }
        }
        if slow != fast {
            let str = String(list[(fast + 1) ... slow])
            if str != " " {
                result.append(str)
            }
        }
        
        return String(result.joined(separator: " "))
    }
}

let s = Solution()
print(s.reverseWords("the sky is blue"))
