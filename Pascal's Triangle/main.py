class Solution:
    def __init__(self):
        self.result = [[]]

    # @return a list of lists of integers
    def generate(self, numRows):
        if numRows == 0:
            return []
        self.result[0].append(1)
        for i in range(1, numRows):
            prev = self.result[i-1]
            temp = []
            for m in range(-1, i):
                if m == -1:
                    temp.append(0 + 1)
                elif m+1 == i:
                    temp.append(0 + 1)
                else:
                    temp.append(prev[m] + prev[m+1])
            self.result.append(temp)
        return self.result
