# coding=utf-8

# Definition for a  binary tree node
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def __init__(self):
        self.nodes = []
        
    # @param root, a tree node
    # @return nothing, do it in place
    def flatten(self, root):
        self.leftFirstSearch(root)
        # for val in self.nodes:
        #     root = TreeNode(val)
        #     root.left = None
        #     root = root.right

    def leftFirstSearch(self, root):
        if root is None:
            return
        if root.left is not None:
            self.leftFirstSearch(root.left)
            nextRight = root.right
            root.right = root.left
            root.left = None
            self.getDeepestRight(root).right = nextRight
        if root.right is not None:
            self.leftFirstSearch(root.right)

    def getDeepestRight(self, root):
        while root is not None:
            if root.right is None:
                return root
            else:
                root = root.right
            
        
ss = Solution()
root = TreeNode(1)
root.left = TreeNode(2)
print ss.flatten(root)
print root.val
print root.right.val
# print ss.search([1,3,1,1,1], 3)
