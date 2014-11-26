class Solution:
    def __init__(self):
        self.result = []

    # @return a list of lists of integer
    def generateMatrix(self, n):
        if n == 0:
            return []
        self.result = [[0 for i in range(n)] for i in range(n)]
        i = 0
        j = 0
        index = 1
        self.result[i][j] = index
        index+=1
        while index <= n*n:
            while j<n and j+1!=n:
                if self.result[i][j+1]==0:
                    self.result[i][j+1]=index
                    j = j+1
                    index += 1
                else:
                    break
            while i<n and i+1!=n:
                if self.result[i+1][j]==0:
                    self.result[i+1][j]=index
                    i = i+1
                    index += 1
                else:
                    break
            while j>-1 and j-1!=-1:
                if self.result[i][j-1]==0:
                    self.result[i][j-1]=index
                    j = j-1
                    index += 1
                else:
                    break
            while i>-1 and i-1!=-1:
                if self.result[i-1][j]==0:
                    self.result[i-1][j]=index
                    i = i-1
                    index += 1
                else:
                    break
        return self.result

ss = Solution()
print ss.generateMatrix(5)
