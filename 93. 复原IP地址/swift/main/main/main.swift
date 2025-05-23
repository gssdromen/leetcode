//
//  main.swift
//  main
//
//  Created by ByteDance on 4/28/25.
//

import Foundation

class Solution {
    var result = [String]()
    var path = [String]()
    var sList = [String.Element]()

    func restoreIpAddresses(_ s: String) -> [String] {
        sList = Array(s)

        backtracking(startIndex: 0, pointNumber: 0)

        return result
    }

    func backtracking(startIndex: Int, pointNumber: Int) {
        if startIndex >= sList.count && pointNumber == 4 {
            let ip = path.joined(separator: ".")
            result.append(ip)
        }
        for i in startIndex ..< sList.count {
            let str = String(sList[startIndex...i])
            if isValid(str: str) {
                path.append(str)
                backtracking(startIndex: i + 1, pointNumber: pointNumber + 1)
                path.removeLast()
            }
        }
    }

    func isValid(str: String) -> Bool {
        guard str.count <= 3 else { return false }
        // 023 is not valid
        if let num = Int(str), str == "\(num)" {
            if num >= 0 && num <= 255 {
                return true
            }
        }
        return false
    }
}

let s = Solution()
print(s.restoreIpAddresses("25525511135"))
