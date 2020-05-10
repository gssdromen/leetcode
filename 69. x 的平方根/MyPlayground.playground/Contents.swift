import UIKit

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else {
            return 0
        }
        
        if x == 1 {
            return 1
        }
        
        var result = 0
        var left = 1
        var right = x - 1
        
        while left <= right {
            let mid: Int = (left + right) / 2
            if mid * mid == x {
                result = mid
                break
            } else if mid * mid < x {
                result = mid
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return result
    }
}

let s = Solution()

print(s.mySqrt(8))
