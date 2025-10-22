//
//  main.swift
//  main
//
//  Created by wuyinjun on 2025/10/22.
//


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        let (list, reversedList) = test(node: head)
        return list == reversedList
    }

    func test(node: ListNode?) -> ([Int], [Int]) {
        var list = [Int]()
        var reversedList = [Int]()

        func helper(node: ListNode?) {
            guard let node else { return }
            list.append(node.val)
            helper(node: node.next)
            reversedList.append(node.val)
        }

        helper(node: node)
        return (list, reversedList)
    }
}

var node1 = ListNode(1)
var node2 = ListNode(2)
var node3 = ListNode(3)

node1.next = node2
node2.next = node3

let s = Solution()
//s.test(node: node1)
