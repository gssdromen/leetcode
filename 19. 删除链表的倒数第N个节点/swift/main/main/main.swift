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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fast = head
        var slow = head
        var result: ListNode? = ListNode()
        result?.next = head

        for _ in 0 ..< n {
            fast = fast?.next
        }

        guard fast != nil else { return head?.next }

        var prevSlow: ListNode?
        while fast != nil {
            prevSlow = slow
            fast = fast?.next
            slow = slow?.next
            if fast == nil {
                prevSlow?.next = slow?.next
            }
        }

        return result?.next
    }
}

let node1 = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

let s = Solution()
s.removeNthFromEnd(node1, 2)
