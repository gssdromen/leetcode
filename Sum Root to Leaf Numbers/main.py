# Definition for a  binary tree node
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def __init__(self):
        self.result = []
    # @param root, a tree node
    # @return an integer
    def sumNumbers(self, root):
        if root is None:
            return 0
        self.helper('', root)
        print self.result
        sum = 0
        for item in self.result:
            sum += int(item)
        return sum

    def helper(self, s, root):
        if root is None:
            return
        s += str(root.val)
        print s
        if root.left is None and root.right is None:
            self.result.append(s)
        if root.left is not None:
            self.helper(s, root.left)
        if root.right is not None:
            self.helper(s, root.right)

ss = Solution()
root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
print ss.sumNumbers(root)
