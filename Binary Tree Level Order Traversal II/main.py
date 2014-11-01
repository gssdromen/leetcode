# Definition for a  binary tree node
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class Solution:
    def __init__(self):
        self.result = []
        self.curList = []
        self.nextList = []

    # @param root, a tree node
    # @return a list of lists of integers
    def levelOrderBottom(self, root):
        if root is None:
            return self.result
        self.nextList.append(root)
        self.helper(self.nextList)
        self.result.reverse()
        return self.result

    def helper(self, nodeList):
        # print nodeList
        self.nextList = []
        # print nodeList
        answer = []
        for node in nodeList:
            if node is not None:
                answer.append(node.val)
                if node.left is not None:
                    # print node.left.val
                    self.nextList.append(node.left)
                if node.right is not None:
                    self.nextList.append(node.right)
        if len(answer) != 0:
            self.result.append(answer)
        if len(self.nextList) != 0:
            self.helper(self.nextList)

su = Solution()
root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
print su.levelOrder(root)

