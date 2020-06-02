import UIKit

class MinStack {

    var stackList = [Int]()
    var minStackList = [Int]()
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        if stackList.count == 0 {
            stackList.append(x)
            minStackList.append(x)
        } else {
            stackList.append(x)
            let min = minStackList.last!
            if min < x {
                minStackList.append(min)
            } else {
                minStackList.append(x)
            }
        }
    }
    
    func pop() {
        stackList.popLast()
        minStackList.popLast()
    }
    
    func top() -> Int {
        return stackList.last!
    }
    
    func getMin() -> Int {
        return minStackList.last!
    }
}
