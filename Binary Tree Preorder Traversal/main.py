# Definition for a  binary tree node
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    # @param root, a tree node
    # @return a list of integers
    result = []
    isFirst = True
    def preorderTraversal(self, root):
        if root == None:
            if self.isFirst:
                return []
            else:
                return
        self.isFirst = False
        self.result.append(root.val)
        self.preorderTraversal(root.left)
        self.preorderTraversal(root.right)
        return self.result

su = Solution()
node = TreeNode(1)
node.left = TreeNode(3)
print su.preorderTraversal(node)