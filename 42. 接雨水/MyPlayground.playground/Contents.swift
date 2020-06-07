import UIKit

class Solution {
    func trap(_ height: [Int]) -> Int {
        // (index, height)
        var stack = [(Int, Int)]()
        var result = 0
        for i in 0 ..< height.count {
            let item = (i, height[i])
            
            while !stack.isEmpty && item.1 >= stack.last!.1 {
                let cur = stack.popLast()!

                if stack.isEmpty {
                    break
                }
                
                let last = stack.last!
                
                let w = item.0 - last.0 - 1 > 0 ? item.0 - last.0 - 1 : 0
                let h = min(item.1, last.1) - cur.1
                result += w * h
            }
            stack.append(item)
        }
        
        return result
    }
}

