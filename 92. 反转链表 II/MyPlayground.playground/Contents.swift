public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }
}

class Solution {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        var pre = ListNode(0)
        pre.next = head
        
        var before: ListNode?
        var after: ListNode?
        var start: ListNode?
        var end: ListNode?
        
        var p: ListNode? = pre
        var counter = 0
        
        while p != nil {
            if counter + 1 == m {
                before = p
                start = p?.next
            }
            if counter == n {
                after = p?.next
                end = p
                end?.next = nil
                // 反转链表
                reverseList(start)
                before?.next = end
                start?.next = after
            }
            p = p?.next
            counter += 1
        }
        
        return pre.next
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        var pre: ListNode? = nil
        var cur = head
        
        while cur != nil {
            let temp = cur?.next
            cur?.next = pre
            pre = cur
            cur = temp
        }
        
        return pre
    }
}
