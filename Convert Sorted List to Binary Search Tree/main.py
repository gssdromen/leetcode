# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
#
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a list node
    # @return a tree node
    def sortedListToBST(self, head):
        if head == None:
            return None
        current = head
        length = 0
        while current:
            length += 1
            current = current.next
        return self.helper(head, 0, length-1)

    def helper(self, root, left, right):
        if left > right:
            return None
        mid = (left + right)/2
        current = root
        for i in range(mid):
            current=current.next
        start = TreeNode(current.val)
        start.left = self.helper(root,0,mid-1)
        start.right = self.helper(root,mid+1,right)
        return start
