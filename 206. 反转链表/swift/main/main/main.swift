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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var p = head

        while p != nil {
            let tmp = p?.next
            p?.next = prev
            prev = p
            p = tmp
        }
        return prev
    }
}
