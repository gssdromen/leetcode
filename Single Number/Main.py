class Solution:
    # @param root, a tree node
    # @return an integer
    def singleNumber(self, A):
        result = 0
        for x in A:
            result ^= x
        return result

ss = Solution()
print ss.singleNumber([1,1,2,3,3])
