//
//  main.swift
//  main
//
//  Created by cedricwu on 7/21/25.
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head = ListNode()
        var p: ListNode? = head
        var add1 = false
        
        var p1 = l1
        var p2 = l2
        while p1 != nil || p2 != nil || add1 {
            var num = (p1?.val ?? 0) + (p2?.val ?? 0) + (add1 ? 1 : 0)
            p?.next = ListNode(num % 10)
            
            add1 = num >= 10
            p = p?.next
            p1 = p1?.next
            p2 = p2?.next
        }
        
        return head.next
    }
}
