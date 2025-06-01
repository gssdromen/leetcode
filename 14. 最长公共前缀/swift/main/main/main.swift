//
//  main.swift
//  main
//
//  Created by cedricwu on 5/31/25.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var maxCount = 0
        for str in strs {
            maxCount = max(maxCount, str.count)
        }
        
        var list: [String.Element] = []
        
        for i in 0 ..< maxCount {
            var needBreak = false
            var c: String.Element?
            
            for str in strs {
                let list = Array(str)
                if i < list.count {
                    if c == nil {
                        c = list[i]
                    } else {
                        if c != list[i] {
                            needBreak = true
                        }
                    }
                } else {
                    needBreak = true
                }
            }
            if needBreak {
                break
            }
            if let c = c {
                list.append(c)
            }
        }
        
        return String(list)
    }
}

let s = Solution()
print(s.longestCommonPrefix(["flower","flow","flight"]))
