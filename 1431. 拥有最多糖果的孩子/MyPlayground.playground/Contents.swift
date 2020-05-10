import UIKit

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = [Bool]()
        
        var max = 0
        for i in candies {
            if i > max {
                max = i
            }
        }
        
        for i in candies {
            if i + extraCandies >= max {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        
        return result
    }
}
