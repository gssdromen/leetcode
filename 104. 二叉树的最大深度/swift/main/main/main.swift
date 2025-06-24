//
//  main.swift
//  main
//
//  Created by cedricwu on 6/2/25.
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
    // 递归法
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        
        let count = max(maxDepth(root?.left), maxDepth(root?.right)) + 1
        return count
    }
}

class Solution2 {
    // 非递归法
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var list = [TreeNode]()
        list.append(root)
        var maxDepth = 0
        while !list.isEmpty {
            var node = list.popLast()
            maxDepth += 1
            if let right = node?.right {
                list.append(right)
            }
            if let left = node?.left {
                list.append(left)
            }
        }
        return maxDepth
    }
}

let s = Solution2()
var root = TreeNode(3)
var node20 = TreeNode(20)
var node15 = TreeNode(15)
var node7 = TreeNode(7)
var node9 = TreeNode(9)

node20.left = node15
node20.right = node7
root.left = node9
root.right = node20

print(s.maxDepth(root))
