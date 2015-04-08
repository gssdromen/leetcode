class Solution:
    # @param s, a string
    # @param dict, a set of string
    # @return a boolean
    def wordBreak(self, s, dict):
        flags = [False for x in xrange(len(s)+1)]
        # print flags
        flags[0] = True
        for m in xrange(len(s)+1):
            for n in xrange(0, m):
                if flags[n] and s[n:m] in dict:
                    flags[m] = True
        # print flags
        return flags[len(s)]


ss = Solution()
print ss.wordBreak('leetcode', ['leet', 'code'])
