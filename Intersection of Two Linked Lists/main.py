# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    # @param two ListNodes
    # @return the intersected ListNode
    def getIntersectionNode(self, headA, headB):
        if headA is None or headB is None:
            return None
        A = headA
        B = headB
        while A is not None:
            if A.val > B.val and B.next is not None:
                B=B.next
            elif A.val < B.val  and A.next is not None:
                A = A.next
            elif A.val==B.val:
                return A
            else:
                return None
        return None
