//
//  main.swift
//  main
//
//  Created by cedricwu on 6/2/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        
        // 处理单节点情况
        if head?.next == nil {
            return nil
        }
        
        fast = fast?.next?.next
        while fast != nil && fast?.next != nil {
            // 换slow后面的节点
            fast = fast?.next?.next
            slow = slow?.next
        }
        
        let tmp = slow?.next?.next
        slow?.next = tmp
        
        return head
    }
}

let s = Solution()
let head = ListNode(1, nil)
print(s.deleteMiddle(head))
