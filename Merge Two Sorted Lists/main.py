# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

# a = b = ListNode(0)
# c = ListNode(1)
# b = c
# print c.val
# print b.val
# print a.val

class Solution:
    # @param two ListNodes
    # @return a ListNode
    def mergeTwoLists(self, l1, l2):
        start = ListNode(123)
        cur = start
        while l1 is not None or l2 is not None:
            if l1 is not None and l2 is not None:
                if l1.val < l2.val:
                    cur.next = l1
                    l1 = l1.next
                    cur = cur.next
                else:
                    cur.next = l2
                    l2 = l2.next
                    cur = cur.next
            elif l1 is None:
                cur.next = l2
                l2 = l2.next
                if cur is not None:
                    cur = cur.next
            elif l2 is None:
                cur.next = l1
                l1 = l1.next
                if cur is not None:
                    cur = cur.next
        return start.next


su = Solution()
l1 = ListNode(1)
l2 = ListNode(1)
ss = su.mergeTwoLists(l1, None)
print ss.val