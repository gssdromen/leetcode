#coding=utf-8
class Solution:
    # @param obstacleGrid, a list of lists of integers
    # @return an integer
    def uniquePathsWithObstacles(self, obstacleGrid):
        m = len(obstacleGrid)
        n = len(obstacleGrid[0])
        paths = []
        for i in xrange(m):
            paths.append([0 for j in xrange(n)])
        # 第一列路线
        is_broken = False
        for i in xrange(m):
            if obstacleGrid[i][0] == 0 and not is_broken:
                paths[i][0]=1
            else:
                paths[i][0]=0
                is_broken = True
        # 第一行路线
        is_broken = False
        for i in xrange(n):
            if obstacleGrid[0][i] == 0 and not is_broken:
                paths[0][i]=1
            else:
                paths[0][i]=0
                is_broken = True
        for i in xrange(1, m):
            for j in xrange(1, n):
                if obstacleGrid[i][j] == 0:
                    paths[i][j]=paths[i-1][j]+paths[i][j-1]
                else:
                    paths[i][j]=0
        if obstacleGrid[0][0] == 1:
            return 0
        else:
            return paths[m-1][n-1]


ss = Solution()
print ss.uniquePathsWithObstacles([[0,0],[1,1],[0,0]])
