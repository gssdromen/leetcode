import UIKit

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set<Int>()
        
        for num in nums {
            numSet.insert(num)
        }
        
        var result = 0
        
        for num in nums {
            if numSet.contains(num - 1) {
                continue
            }
            var count = 1
            var flag = true
            var tmp = num + 1
            while flag {
                if numSet.contains(tmp) {
                    tmp += 1
                    count += 1
                } else {
                    flag = false
                    result = max(count, result)
                }
            }
        }
        
        return result
    }
}

