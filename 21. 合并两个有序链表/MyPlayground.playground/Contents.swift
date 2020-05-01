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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let headNode: ListNode = ListNode(0)
        var p: ListNode? = headNode
    
        var left = l1
        var right = l2
        
        while left != nil || right != nil {
            if left != nil && right != nil {
                if left!.val < right!.val {
                    p?.next = left
                    left = left?.next
                } else {
                    p?.next = right
                    right = right?.next
                }
            } else if left != nil {
                p?.next = left
                left = left?.next
            } else if right != nil {
                p?.next = right
                right = right?.next
            }
            p = p?.next
        }
        
        return headNode.next
    }
}
