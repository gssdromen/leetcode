//
//  main.swift
//  main
//
//  Created by cedricwu on 5/30/25.
//

import Foundation

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var list = [0]
        list.append(contentsOf: flowerbed)
        list.append(0)
        
        var canCount = 0
        var index = 1
        
        while index <= flowerbed.count {
            if list[index] == 0 && list[index-1] == 0 && list[index+1] == 0 {
                canCount += 1
                index += 2
            } else {
                index += 1
            }
        }
        
        return canCount >= n
    }
}

let s = Solution()
print(s.canPlaceFlowers([1,0,0,0,0,0,1], 2))
