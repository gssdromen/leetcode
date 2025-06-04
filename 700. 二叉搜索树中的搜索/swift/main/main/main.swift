//
//  main.swift
//  main
//
//  Created by cedricwu on 6/3/25.
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
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        return dfs(root, val)
    }
    
    func dfs(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root?.val == val {
            return root
        }
        if let v = root?.val {
            if v > val {
                return dfs(root?.left, val)
            } else {
                return dfs(root?.right, val)
            }
        }
        return nil
    }
}
