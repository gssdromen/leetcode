class Solution:
    # @param matrix, a list of lists of integers
    # RETURN NOTHING, MODIFY matrix IN PLACE.
    def setZeroes(self, matrix):
        m = len(matrix)
        n = len(matrix[0])
        x = []
        y = []
        for i in range(m):
            for j in range(n):
                if matrix[i][j] == 0:
                    x.append(i)
                    y.append(j)
        for i in range(m):
            for j in range(n):        
                if i in x or j in y:
                    matrix[i][j] = 0
