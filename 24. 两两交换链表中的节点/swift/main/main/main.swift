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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let result = ListNode()
        result.next = head

        var p: ListNode? = result
        while p != nil && p?.next != nil && p?.next?.next != nil {
            let left = p?.next
            let right = p?.next?.next
            let nextP = right?.next

            p?.next = right
            right?.next = left
            left?.next = nextP

            p = left
        }

        return result.next
    }
}

let node1 = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
node1.next = node2
node2.next = node3
node3.next = node4

let s = Solution()
s.swapPairs(node1)
