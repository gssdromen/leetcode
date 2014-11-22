class Solution:
    # @param matrix, a list of lists of integers
    # @return a list of lists of integers
    def rotate(self, matrix):
        n = len(matrix)
        if n==0:
            return
        if n%2==0:
            m = n/2
        else:
            m = (n+1)/2
        for i in range(m):
            temp = matrix[i]
            matrix[i] = matrix[n-i-1]
            matrix[n-i-1] = temp
        for i in range(n):
            for j in range(i):
                temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
        return matrix

ss=Solution()
ss.rotate([[1,2,3],[4,5,6],[7,8,9]])
