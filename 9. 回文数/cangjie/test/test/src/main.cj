package test

main(): Int64 {
    let s = Solution()
    // Solution.isPalindrome(123)
    println(s.isPalindrome(-121))

    return 0
}

class Solution {
    func isPalindrome(x: Int64): Bool {
        var list = x.toString().toRuneArray()

        var left = 0
        var right = list.size - 1
        while (left < right) {
            if (list[left] == list[right]) {
                left += 1
                right -= 1
            } else {
                return false
            }
        }

        return true
    }
}
