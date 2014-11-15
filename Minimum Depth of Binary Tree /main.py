# Definition for a  binary tree node
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    # @param root, a tree node
    # @return an integer
    def minDepth(self, root):
        if root is None:
            return 0
        if root.left is None and root.right is None:
            return 1
        ll = 9999
        rr = 9999
        if root.left is not None:
            ll = self.minDepth(root.left)
        if root.right is not None:
            rr = self.minDepth(root.right)
        return min(ll, rr) + 1

ss = Solution()
a = TreeNode(1)
a.left = TreeNode(2)
print ss.minDepth(a)
