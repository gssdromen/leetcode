//
//  main.swift
//  main
//
//  Created by cedricwu on 5/31/25.
//

import Foundation

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [[String.Element]: [String]] = [[String.Element]: [String]]()
        for str in strs {
            let list = Array(str).sorted()
            if var l = dict[list] {
                l.append(str)
                dict[list] = l
            } else {
                dict[list] = [str]
            }
            print(list.sorted())
        }
        
        var result = [[String]]()
        for v in dict.values {
            result.append(v)
        }
        return result
    }
}

let s = Solution()

print(s.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
