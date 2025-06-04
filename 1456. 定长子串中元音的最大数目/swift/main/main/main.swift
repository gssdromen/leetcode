//
//  main.swift
//  main
//
//  Created by cedricwu on 6/3/25.
//

import Foundation

class Solution {
    let vowelList = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var vowelCount = 0
    var maxVowelCount = 0
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let list = Array(s)
        for i in 0 ..< list.count {
            let letter = String(list[i])
            if i < k {
                if vowelList.contains(letter) {
                    vowelCount += 1
                    maxVowelCount = vowelCount
                }
                continue
            }
            
            let newLetter = String(list[i])
            let delLetter = String(list[i - k])
            if vowelList.contains(newLetter) {
                vowelCount += 1
            }
            if vowelList.contains(delLetter) {
                vowelCount -= 1
            }
            maxVowelCount = max(maxVowelCount, vowelCount)
        }
        return maxVowelCount
    }
}

let s = Solution()
print(s.maxVowels("aeiou", 2))
