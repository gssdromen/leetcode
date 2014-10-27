# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param a ListNode
    # @return a ListNode
    def swapPairs(self, head):
        pre = ListNode(0)
        pre.next = head
        cur = head
        head = pre
        while cur is not None and cur.next is not None:
            pre.next = cur.next
            cur.next = pre.next.next
            pre.next.next = cur
            pre = cur
            cur = cur.next
        return head.next
