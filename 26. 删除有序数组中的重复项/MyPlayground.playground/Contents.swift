import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return 1
        }
        guard nums.count > 2 else {
            if nums[0] == nums[1] {
                return 1
            } else {
                return 2
            }
        }
        var slow = 0
        var fast = 1
        while fast < nums.count {
            if nums[slow] != nums[fast] {
                nums[slow + 1] = nums[fast]
                fast += 1
                slow += 1
            } else {
                fast += 1
            }
        }
        return slow + 1
    }
}

let s = Solution()
var list = [1, 1, 2]
let result = s.removeDuplicates(&list)
print(list)
print(result)
