//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    var result = [[String]]()
    var path = [String]()
    var sList = [String.Element]()

    func partition(_ s: String) -> [[String]] {
        sList = Array(s)
        backtracking(startIndex: 0)
        return result
    }

    func backtracking(startIndex: Int) {
        guard startIndex < sList.count else {
            result.append(path)
            return
        }

        for i in startIndex ..< sList.count {
            if isPalindrome(start: startIndex, end: i) {
                let substring = String(sList[startIndex ... i])
                path.append(substring)
                backtracking(startIndex: i + 1)
                path.removeLast()
            }
        }
    }

    func isPalindrome(start: Int, end: Int) -> Bool {
        var start = start, end = end
        while start < end {
            if sList[start] != sList[end] { return false }
            start += 1
            end -= 1
        }
        return true
    }
}
