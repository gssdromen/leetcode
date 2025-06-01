//
//  main.swift
//  main
//
//  Created by cedricwu on 6/2/25.
//

import Foundation

class Solution {
    func tribonacci(_ n: Int) -> Int {
        var list = Array(repeating: 0, count: n < 3 ? 3 : n + 1)
        list[0] = 0
        list[1] = 1
        list[2] = 1
        if n <= 2 {
            return list[n]
        }
        
        for i in 3 ... n {
            list[i] = list[i - 1] + list[i - 2] + list[i - 3]
        }
        
        return list[n]
    }
}

let s = Solution()
print(s.tribonacci(25))
