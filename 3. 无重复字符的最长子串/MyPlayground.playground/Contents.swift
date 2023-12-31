import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s == "" {
            return 0
        }
        var maxStr = String()
        var curStr = String()
        for char in s {
            while curStr.contains(char) {
                curStr.remove(at: curStr.startIndex)
            }
            curStr.append(char)
            if curStr.count > maxStr.count {
                maxStr = curStr
            }
        }
        return maxStr.count
    }

//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        var left = 0
//        var right = 0
//        var length = 0
//
//        var set = Set<Character>()
//
//        while right < s.count {
//            let rightC = s[s.index(s.startIndex, offsetBy: right)]
//            if !set.contains(rightC) {
//                set.insert(rightC)
//                length = max(right - left + 1, length)
//                right += 1
//            } else {
//                let leftC = s[s.index(s.startIndex, offsetBy: left)]
//                set.remove(leftC)
//                left += 1
//            }
//        }
//        return length
//    }
}

let s = Solution()
print(s.lengthOfLongestSubstring("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCD"))
