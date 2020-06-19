import UIKit

class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        var stack = [Int]()
        var result = [Int](repeating: 0, count: T.count)
        
        for i in 0 ..< T.count {
            while stack.count > 0 && T[stack.last!] < T[i] {
                result[stack.last!] = i - stack.last!
                stack.popLast()
            }
            stack.append(i)
        }
        return result
    }
}

let s = Solution()
s.dailyTemperatures([73,74,75,71,69,72,76,73])
