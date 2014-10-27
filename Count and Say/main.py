class Solution:
    # @return a string
    def countAndSay(self, n):
        finalStr = ""
        ss = str(n)
        splits = []
        if len(ss) == 1:
            return "1"+ss
        sliptIndexs = []
        for s in range(len(ss)-1):
            if ss[s] != ss[s+1]:
                sliptIndexs.append(s+1)
        sliptIndexs.append(len(ss))
        for i in range(len(sliptIndexs)):
            if i == 0:
                splits.append(ss[:sliptIndexs[i]])
            elif i == len(sliptIndexs):
                splits.append(ss[sliptIndexs[i]:])
            else:
                splits.append(ss[sliptIndexs[i-1]:sliptIndexs[i]])
        for item in splits:
            finalStr += str(len(item)) + item[0]
        return finalStr


su = Solution()
print su.countAndSay(11212221)
