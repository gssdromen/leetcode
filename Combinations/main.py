# coding=utf-8

class Solution:
    def __init__(self):
        self.answer = []
    # @return a list of lists of integers
    def combine(self, n, k):
        self.candidate = [i for i in range(1, n+1)]
        self.flag = [False for i in range(n)]
        self.helper(0, [], k)
        print self.answer

    def helper(self, i, com, k):
        if i == k:
            temp = com[:]
            self.answer.append(temp)
            return
        for index in range(len(self.candidate)):
            if self.flag[index] == False:
                length = len(com)
                if length == 0:
                    pass
                elif self.candidate[index] < com[length-1]:
                    continue
                com.append(self.candidate[index])
                self.flag[index] = True
                self.helper(i+1, com, k)
                com.pop()
                self.flag[index] = False
            

ss = Solution()
print ss.combine(4,2)
# print ss.search([1,3,1,1,1], 3)
