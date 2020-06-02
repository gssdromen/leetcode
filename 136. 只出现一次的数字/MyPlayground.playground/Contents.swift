import UIKit

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var result = 0
        for num in nums {
            result ^= num
        }
        
        return result
    }
}

let s = Solution()
s.singleNumber([2,2,1])
