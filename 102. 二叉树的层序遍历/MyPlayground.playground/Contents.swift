import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return [[Int]]()
        }
        
        var result = [[Int]]()
        var queue = [TreeNode]()
        queue.append(root!)
        
        while queue.count > 0 {
            var temp = [Int]()
            let count = queue.count
            
            for node in queue {
                temp.append(node.val)
                if let l = node.left {
                    queue.append(l)
                }
                if let r = node.right {
                    queue.append(r)
                }
            }
            
            result.append(temp)
            queue.removeFirst(count)
        }
        
        return result
    }
}
