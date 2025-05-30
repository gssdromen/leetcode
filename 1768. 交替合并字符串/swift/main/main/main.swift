//
//  main.swift
//  main
//
//  Created by cedricwu on 5/29/25.
//

import Foundation

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let list1 = Array(word1)
        let list2 = Array(word2)
        var p1 = 0
        var p2 = 0
        var result = [String.Element]()
        
        while p1 < list1.count || p2 < list2.count {
            if p1 < list1.count {
                result.append(list1[p1])
                p1 += 1
            }
            if p2 < list2.count {
                result.append(list2[p2])
                p2 += 1
            }
        }
        
        return String(result)
    }
}

let s = Solution()
print(s.mergeAlternately("ab", "pqrs"))
