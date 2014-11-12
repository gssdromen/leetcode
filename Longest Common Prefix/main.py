import sys

class Solution:
    # @return a string
    def longestCommonPrefix(self, strs):
        if strs == []:
            return ""
        minLeng = 9999
        minIndex = 0
        for i in range(len(strs)):
            if len(strs[i])<minLeng:
                minLeng = len(strs[i])
                minIndex = i
        minStr = strs[minIndex]
        for i in range(minLeng):
            for item in strs:
                if item[i] == minStr[i]:
                    pass
                else:
                    return minStr[:i]
        return minStr


su = Solution()
print su.longestCommonPrefix([])
