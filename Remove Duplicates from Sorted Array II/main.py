# coding=utf-8

class Solution:
    # @param A a list of integers
    # @return an integer
    def removeDuplicates(self, A):
        prev = 0
        cur = 1
        next = 2
        if len(A) < 3:
            return len(A)
        while next != len(A):
            if A[prev] == A[cur] and A[cur] == A[next]:
                A.pop(next)
                continue
            else:
                prev += 1
                cur += 1
                next += 1
        return len(A)
        
ss = Solution()
print ss.removeDuplicates([1,1,1])
# print ss.search([1,3,1,1,1], 3)
