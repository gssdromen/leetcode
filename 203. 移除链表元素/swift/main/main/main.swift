//
//  main.swift
//  main
//
//  Created by ByteDance on 4/25/25.
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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var result = ListNode()
        result.next = head

        var p = head
        var prev: ListNode? = result

        while p != nil {
            if p?.val == val {
                prev?.next = p?.next
            } else {
                prev = p
            }

            p = p?.next
        }

        return result.next
    }
}
