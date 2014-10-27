# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    # @param head, a ListNode
    # @return a ListNode

    def deleteDuplicates(self, head):
        if head is None:
            return
        result = head
        alreadyHave = [result.val]
        now = result.next
        while now is not None:
            if now.val in alreadyHave:
                result.next = None
                now = now.next
            else:
                alreadyHave.append(now.val)
                result.next = now
                result = now
                now = now.next
        return head


su = Solution()
node = ListNode(1)
node.next = ListNode(2)
node.next.next = ListNode(2)
node.next.next.next = ListNode(3)
a = su.deleteDuplicates(node)
print a.val
print a.next.val
print a.next.next.val
print a.next.next.next.val
