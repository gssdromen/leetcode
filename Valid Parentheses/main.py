class Solution:
    def getLastFlag(self, flag):
        length = len(flag)
        if length == 0:
            return ''
        else:
            return flag.pop()
    
    # @return a boolean
    def isValid(self, s):
        yuan = 0
        fang = 0
        hua = 0
        flag = []
        for item in s:
            if item == '(':
                flag.append('(')
                yuan += 1
            if item == ')':
                if self.getLastFlag(flag) != '(':
                    return False
                yuan -= 1
            if item == '{':
                flag.append('{')
                hua += 1
            if item == '}':
                if self.getLastFlag(flag) != '{':
                    return False
                hua -= 1
            if item == '[':
                flag.append('[')
                fang += 1
            if item == ']':
                if self.getLastFlag(flag) != '[':
                    return False
                fang -= 1
            if yuan < 0 or fang < 0 or hua < 0:
                return False
        if yuan == 0 and fang == 0 and hua == 0:
            return True
        else:
            return False

su = Solution()
print su.isValid('([])')
