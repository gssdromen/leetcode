//
//  main.swift
//  main
//
//  Created by cedricwu on 11/1/25.
//

import Foundation

class Solution {
    func countPairs(_ nums: [Int], _ target: Int) -> Int {
        var count = 0
        guard nums.count > 1 else { return 0 }
        for i in 0 ..< nums.count {
            for j in (i + 1) ..< nums.count {
                if nums[i] + nums[j] < target {
                    count += 1
                }
            }
        }
        return count
    }
}
