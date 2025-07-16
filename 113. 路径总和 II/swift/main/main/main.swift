//
//  main.swift
//  main
//
//  Created by cedricwu on 7/16/25.
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
    var result: [[Int]] = []
    var path: [Int] = []
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        if let root = root {
            path.append(root.val)
        }
        backtracking(node: root, targetSum: targetSum)
        return result
    }
    
    func backtracking(node: TreeNode?, targetSum: Int) {
        guard let node = node else { return }
        if node.left == nil && node.right == nil {
            let sum = path.reduce(0) { partialResult, num in
                partialResult + num
            }
            if sum == targetSum {
                result.append(path)
                return
            }
        }
        if let left = node.left {
            path.append(left.val)
            backtracking(node: left, targetSum: targetSum)
            _ = path.popLast()
        }
        if let right = node.right {
            path.append(right.val)
            backtracking(node: right, targetSum: targetSum)
            _ = path.popLast()
        }
    }
}

func buildTree(from array: [Int?]) -> TreeNode? {
    guard !array.isEmpty, let first = array[0] else {
        return nil
    }

    let root = TreeNode(first)
    var queue: [TreeNode] = [root]
    var index = 1

    while index < array.count && !queue.isEmpty {
        let current = queue.removeFirst()

        if index < array.count, let leftVal = array[index] {
            current.left = TreeNode(leftVal)
            queue.append(current.left!)
        }
        index += 1

        if index < array.count, let rightVal = array[index] {
            current.right = TreeNode(rightVal)
            queue.append(current.right!)
        }
        index += 1
    }

    return root
}

func buildTree2(from array: [Int?]) -> TreeNode? {
    guard !array.isEmpty, let first = array[0] else { return nil }
    
    let root = TreeNode(first)
    var queue: [TreeNode] = [root]
    var index = 1
    
    while index < array.count && !queue.isEmpty {
        let current = queue.removeFirst()
        
        // 处理左子节点
        if index < array.count {
            if let val = array[index] {
                current.left = TreeNode(val)
                queue.append(current.left!)
            }
            index += 1
        }
        
        // 处理右子节点
        if index < array.count {
            if let val = array[index] {
                current.right = TreeNode(val)
                queue.append(current.right!)
            }
            index += 1
        }
    }
    
    return root
}

let root = buildTree2(from: [1, nil, 2, nil, nil, nil, 3, nil, nil, nil, nil, nil, nil, nil, 4])
//let root = buildTree(from: [1, nil, 2, nil, 3, nil, 4])
print(root)
