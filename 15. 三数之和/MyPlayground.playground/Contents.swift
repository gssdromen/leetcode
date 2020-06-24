import UIKit

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        for i in 0 ..< nums.count - 2 {
            for j in i+1 ..< nums.count - 1 {
                for k in j+1 ..< nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                        result.append([i, j , k])
                    }
                }
            }
        }
        
        return result
    }
}
