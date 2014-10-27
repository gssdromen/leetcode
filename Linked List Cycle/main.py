# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return a boolean
    def hasCycle(self, head):
        if head is None:
            return False
        fast = head
        slow = head
        while True:
            if fast is not None and fast.next is not None:
                fast = fast.next.next
                slow = slow.next
                if fast == slow:
                    return True
            else:
                return False


su = Solution()
print su.countAndSay(11212221)
