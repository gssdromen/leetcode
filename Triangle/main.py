import sys

class Solution:
    # @param triangle, a list of lists of integers
    # @return an integer
    def minimumTotal(self, triangle):
        sumResult = 0
        minResult = 9999
        for row in triangle:
            for item in row:
                if item < minResult:
                    minResult = item
            sumResult += minResult
            minResult = 9999
        return sumResult



su = Solution()
print su.minimumTotal([[-1],[2,3],[1,-1,-3]])
