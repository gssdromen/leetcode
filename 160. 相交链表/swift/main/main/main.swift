//
//  main.swift
//  main
//
//  Created by wuyinjun on 2025/10/20.
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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var listA = [ListNode]()
        var listB = [ListNode]()
        var cur = headA
        while cur != nil {
            listA.append(cur!)
            cur = cur?.next
        }
        cur = headB
        while cur != nil {
            listB.append(cur!)
            cur = cur?.next
        }
        listA = listA.reversed()
        listB = listB.reversed()
        let count = min(listA.count, listB.count)
        guard count > 0 else { return nil }
        if count == 1 {
            if listA[0] === listB[0] {
                return listA[0]
            } else {
                return nil
            }
        } else {
            if listA[0] === listB[0] {
                var prev = 0
                for i in 1 ..< count {
                    if listA[i] === listB[i] {
                        prev = i
                    } else {
                        return listA[prev]
                    }
                }
                return listA[prev]
            }
        }
        return nil
    }
}

//[2,2,4,5,4]
var node1 = ListNode(2)
var node2 = ListNode(2)
var node3 = ListNode(4)
var node4 = ListNode(5)
var node5 = ListNode(4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

let s = Solution()
print(s.getIntersectionNode(node1, node2)?.val)
