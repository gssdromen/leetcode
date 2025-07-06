//
//  main.swift
//  main
//
//  Created by cedricwu on 7/7/25.
//

import Foundation

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        for h in stride(from: citations.count, through: 0, by: -1) {
            var count = 0
            for num in citations {
                if num >= h {
                    count += 1
                }
            }
            if count >= h {
                return h
            }
        }
        return 0
    }
}
