//
//  main.swift
//  main
//
//  Created by cedricwu on 6/1/25.
//

import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var result = [Int]()
        for _ in 0 ..< k {
            var listRemove = [Int]()
            if let n = nums.popLast() {
                listRemove.append(n)
            }
            result = listRemove + nums
            nums = result
        }
    }
}

let s = Solution()
var list = [1,2]
s.rotate(&list, 3)
print(list)
