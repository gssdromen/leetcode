# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param num, a list of integers
    # @return a tree node
    def sortedArrayToBST(self, num):
        if len(num) == 0:
            return None
        head = self.helper(num, 0, len(num)-1)
        return head

    def helper(self, num, left, right):
        if left > right:
            return None
        mid = (left + right)/2
        node = TreeNode(num[mid])
        node.left = self.helper(num, left, mid-1)
        node.right = self.helper(num, mid+1, right)
        return node