import math

class Solution:
    # @param s, a string
    # @return an integer
    def titleToNumber(self, s):
        if s == '':
            return 0
        leng = len(s)
        aSum = 0
        for index in range(len(s)):
            char = s[index]
            num = ord(char) - 64
            
            aSum += math.pow(26, leng-index-1)*num
        return int(aSum)

        
ss = Solution()
print ss.titleToNumber('')
