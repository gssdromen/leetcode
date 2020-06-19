import UIKit

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 1, count: nums.count)
        var k = 1
        for i in 0 ..< nums.count {
            result[i] = k
            k = k * nums[i]
        }
        k = 1
        for i in (0 ... nums.count-1).reversed() {
            result[i] = result[i] * k
            k = k * nums[i]
        }
        return result
    }
}

let s = Solution()
s.productExceptSelf([1,2,3])
