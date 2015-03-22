class Solution:
    # @param version1, a string
    # @param version2, a string
    # @return an integer
    def compareVersion(self, version1, version2):
        v1 = version1.split('.')
        v2 = version2.split('.')
        for i in xrange(len(v1)):
            v1[i] = int(v1[i])
        for i in xrange(len(v2)):
            v2[i] = int(v2[i])
        len1 = len(v1)
        len2 = len(v2)
        biggerLen = len1 if len1>len2 else len2
        smallerLen = len1 if len1<len2 else len2
        for i in xrange(biggerLen):
            if i < smallerLen:
                if v1[i] > v2[i]:
                    return 1
                if v1[i] < v2[i]:
                    return -1
            if i >= smallerLen and i < biggerLen:
                if len1 > len2:
                    if v1[i] != 0:
                        return 1
                if len1 < len2:
                    if v2[i] != 0:
                        return -1
        return 0

ss = Solution()
print ss.compareVersion('1.1', '1.1')
