//
//  main.swift
//  main
//
//  Created by cedricwu on 5/21/25.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        
        var lowPrice: Int?
        
        for p in prices {
            if let lp = lowPrice {
                if result < p - lp {
                    result = p - lp
                }
                if p < lp {
                    lowPrice = p
                }
            } else {
                lowPrice = p
            }
        }
        
        return result
    }
}

let s = Solution()
print(s.maxProfit([7,1,5,3,6,4]))
