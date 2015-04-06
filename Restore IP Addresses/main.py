class Solution:
    # @param s, a string
    # @return a list of strings
    def __init__(self):
        self.final_result = []

    def restoreIpAddresses(self, s):
        self.helper(s, 0, '', 0)
        return self.final_result

    def helper(self, s, level, result, left):
        if level == 3:
            if len(s) - left > 3:
                return
            num = s[left:]
            if self.isValid(num):
                # print '======='
                result += '.' + num
                self.final_result.append(result)
            else:
                return
        else:
            for i in xrange(4):
                num = s[left:left+i+1]
                if self.isValid(num):
                    if level == 0:
                        self.helper(s, level + 1, num, left + i + 1)
                    else:
                        self.helper(s, level + 1, result + '.' + num, left + i + 1)

    def isValid(self, s):
        if s == '' or s is None:
            return False
        if len(s) > 1 and s[0] == '0':
            return False
        num = int(s)
        if num >= 0 and num <= 255:
            return True
        return False


ss = Solution()
print ss.restoreIpAddresses('172162541')
