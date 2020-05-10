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
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if t == nil {
            return true
        }
        if s == nil {
            return false
        }
        return helper(s, t) || isSubtree(s?.left, t) || isSubtree(s?.right, t)
    }
    
    func helper(_ n1: TreeNode?, _ n2: TreeNode?) -> Bool {
        if n1 == nil && n2 == nil {
            return true
        }
        if n1 == nil || n2 == nil {
            return false
        }
        let flag1 = n1!.val == n2!.val
        let flag2 = helper(n1?.left, n2?.left)
        let flag3 = helper(n1?.right, n2?.right)
        return flag1 && flag2 && flag3
    }
}
