package test

import std.collection.*

main(): Int64 {
    println("hello world")
    let s = Solution()
    
    println(s.climbStairs(2))
    return 0
}

class Solution {
    func climbStairs(n: Int64): Int64 {
        let list = Array<Int64>(n+1, item: 0)
        if (n <= 1) {
            return 1
        }
        list[0] = 1
        list[1] = 1
        for (i in 2 ..= n) {
            list[i] = list[i-1] + list[i-2]
        }
        return list[n]
    }
}