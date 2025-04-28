//
//  main.swift
//  main
//
//  Created by ByteDance on 4/25/25.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var list = [Int]()
        helper(list: &list, node: root)

        return list
    }

    func helper(list: inout [Int], node: TreeNode?) {
        guard let node else { return }
        list.append(node.val)
        helper(list: &list, node: node.left)
        helper(list: &list, node: node.right)
    }
}

let node1 = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
node1.right = node2
node2.left = node3

let s = Solution()
s.preorderTraversal(node1)
