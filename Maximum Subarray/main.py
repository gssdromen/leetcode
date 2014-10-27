class Solution:
    # @param A, a list of integers
    # @return an integer
    def maxSubArray(self, A):
        if len(A) == 0:
            return 0
        local = A[0]
        allnum = A[0]
        for i in range(len(A)):
            local = max(local+A[i], A[i])
            allnum = max(allnum, local)
        return allnum
