import UIKit

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else {
            return 1
        }
        
        let flag = n < 0
        let m = flag ? -n : n
        
        var result: Double = 0
        
        if m % 2 == 0 {
            let temp = myPow(x, m / 2)
            result = temp * temp
        } else {
            let temp = myPow(x, (m - 1) / 2)
            result = temp * temp * x
        }
        
        return flag ? 1 / result : result
    }
}

let s = Solution()
s.myPow(2, 10)
