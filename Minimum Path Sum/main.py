class Solution:
    # @param grid, a list of lists of integers
    # @return an integer
    def __init__(self):
        self.result = []

    def minPathSum(self, grid):
        # m是行数，n是列数
        m = len(grid)
        n = len(grid[0])
        self.result = [[0 for i in range(n+1)] for i in range(m+1)]
        for i in range(1, m+1):
            for j in range(1, n+1):
                if i == 1:
                    self.result[i][j] = sum(grid[0][0:j])
                elif j == 1:
                    _sum = 0
                    for q in range(i):
                        _sum += grid[q][0]
                    self.result[i][j] = _sum
                    # print self.result
                else:
                    self.result[i][j] = min(self.result[i-1][j], self.result[i][j-1]) + grid[i-1][j-1]
        return self.result[m][n]
