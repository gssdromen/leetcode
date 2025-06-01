//
//  main.swift
//  main
//
//  Created by cedricwu on 6/1/25.
//

import Foundation

class RandomizedSet {
    private var nums = [Int]()
    private var dict = [Int: Int]()

    init() {
        nums.removeAll()
        dict.removeAll()
    }
    
    func insert(_ val: Int) -> Bool {
        if dict[val] != nil {
            return false
        }
        dict[val] = nums.count
        nums.append(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        guard let index = dict[val] else { return false }
        let lastElement = nums.last!
        
        // Update the position of the last element in the map
        dict[lastElement] = index
        nums[index] = lastElement

        // Remove the last element
        nums.removeLast()
        dict[val] = nil
        
        return true
    }
    
    func getRandom() -> Int {
        return nums.randomElement()!
    }
}

let s = RandomizedSet()
s.insert(0)
s.insert(1)
s.remove(0)
s.insert(2)
s.remove(1)
print(s.getRandom())
