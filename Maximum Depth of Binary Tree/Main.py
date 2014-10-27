# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return an integer
    def maxDepth(self, root):
        if root:
            return 0
        left = maxDepth(root.left)
        right = maxDepth(root.right)
        return max(left, right) + 1
