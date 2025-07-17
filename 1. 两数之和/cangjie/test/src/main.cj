package test

main(): Int64 {
    println("hello world")
    return 0
}

class Solution {
    func twoSum(nums: Array<Int64>, target: Int64): Array<Int64> {
        var result: Array<Int64> = []
        for (i in 0 .. nums.size) {
            for (j in i+1 .. nums.size) {
                if (nums[i] + nums[j] == target) {
                    result = [i, j]
                }
            }
        }

        return result
    }
}