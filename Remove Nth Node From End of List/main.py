# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    # @return a ListNode
    def removeNthFromEnd(self, head, n):
        if head.next is None and n == 1:
            return None
        start = head
        while head is not None:
            nextn = self.getNNext(head, n)
            if nextn is None:
                prev.next = head.next
            else:
                prev = head
            head = head.next
        return start

    def getNNext(self, head, n):
        for i in range(n):
            head = head.next
        return head

ss = Solution()
root = ListNode(1)
root.next = ListNode(2)
print ss.removeNthFromEnd(root, 1)
