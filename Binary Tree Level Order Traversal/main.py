# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None


class Solution:
    def __init__(self):
        self.result = []
        self.curList = []
        self.nextList = []
        
    # @param root, a tree node
    # @return a list of lists of integers
    def levelOrder(self, root):
        if root is None:
            return self.result
        self.curList.append(root)
        self.helper(self.curList)
        return self.result

    def helper(self, nodeList):
        del self.nextList[:]
        self.nextList[:] = []
        answer = []
        for node in self.curList:
            if node is not None:
                answer.append(node.val)
                self.nextList.append(node.left)
                self.nextList.append(node.right)
        self.result.append(answer)
        self.helper(self.nextList)

