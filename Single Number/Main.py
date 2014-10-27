class Solution:
    # @param root, a tree node
    # @return an integer
    def singleNumber(self, A):
        result = 0
        for x in A:
            result ^= x
        return result
