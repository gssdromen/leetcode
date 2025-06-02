//
//  main.swift
//  main
//
//  Created by cedricwu on 6/2/25.
//

import Foundation

class Solution {
    let map = [
        "0": "",
        "1": "",
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz"
    ]
    var result = [String]()
    var path = [String]()
    
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else {
            return []
        }
        
        backtracing(digits: Array(digits), index: 0)
        
        return result
    }
    
    private func backtracing(digits: [String.Element], index: Int) {
        if digits.count == path.count {
            let item = path.joined(separator: "")
            result.append(item)
            return
        }
        let digit = String(digits[index])
        let list = Array(map[digit]!)
        for i in 0 ..< list.count {
            let item = String(list[i])
            path.append(item)
            backtracing(digits: digits, index: index + 1)
            _ = path.popLast()
        }
    }
}

let s = Solution()
print(s.letterCombinations("23"))
