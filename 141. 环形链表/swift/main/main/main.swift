//
//  main.swift
//  main
//
//  Created by cedricwu on 4/26/25.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else {
            return false
        }
        guard head?.next != nil else {
            return false
        }
        
        var slow = head
        var fast = head?.next
        
        while slow !== fast {
            if fast == nil || fast?.next == nil {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return true
    }
}

