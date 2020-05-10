import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        var p1 = head
        var p2 = head?.next
        
        if p2 == nil {
            return p1
        }
        
        while p2 != nil {
            let temp = p2?.next
            p2?.next = p1
            p1 = p2
            if temp == nil {
                break
            }
            p2 = temp
        }
        
        return p2
    }
}
