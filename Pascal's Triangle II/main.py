class Solution:
    def __init__(self):
        self.result = []

    # @return a list of lists of integers
    def getRow(self, numRows):
        self.result = [1 for i in range(numRows+1)]
        for i in range(1, numRows+1):
            prev = self.result
            temp = []
            for m in range(-1, i):
                if m == -1:
                    temp.append(0 + 1)
                elif m+1 == i:
                    temp.append(0 + 1)
                else:
                    temp.append(prev[m] + prev[m+1])
            self.result = temp
        return self.result


su = Solution()
su.getRow(0)
su.getRow(1)
su.getRow(2)
su.getRow(3)
