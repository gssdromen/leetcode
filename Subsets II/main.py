class Solution:
    # @param S, a list of integer
    # @return a list of lists of integer
    def subsets(self, S):
        S.sort()
        return self.helper(S, len(S)-1)

    def helper(self, S, index):
        if index == -1:
            return [[]]
        res = self.helper(S, index-1)
        size = len(res)
        print size
        print index
        print res
        for i in xrange(size):
            temp = res[i][:]
            temp.append(S[index])
            if temp not in res:
                res.append(temp)
        print res
        print '========='
        return res


ss = Solution()
print ss.subsets([1, 3, 2])
