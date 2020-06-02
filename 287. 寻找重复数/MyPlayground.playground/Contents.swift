import UIKit

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        let len = nums.count
        var left = 1
        var right = len - 1
        var ans = -1
        while left <= right {
            let mid = left + (right - left) / 2
            var count = 0
            for num in nums {
                if num <= mid {
                    count += 1
                }
            }
            if count <= mid {
                left = mid + 1
            } else {
                right = mid - 1
                ans = mid
            }
        }
        
        return ans
    }
}
