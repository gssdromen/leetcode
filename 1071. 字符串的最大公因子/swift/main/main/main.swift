//
//  main.swift
//  main
//
//  Created by cedricwu on 5/30/25.
//

import Foundation

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else {
            return ""
        }
        let count = greatestCommonDivisor(str1.count, str2.count)
        return String(str1.prefix(count))
    }

    func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b
        while y != 0 {
            let temp = y
            y = x % y
            x = temp
        }
        return x
    }
}
