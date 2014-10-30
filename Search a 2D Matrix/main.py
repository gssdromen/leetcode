class Solution:
    # @param matrix, a list of lists of integers
    # @param target, an integer
    # @return a boolean
    def searchMatrix(self, matrix, target):
        if len(matrix) == 0:
            return False
        for aList in matrix:
            length = len(aList)
            if aList[length - 1] < target:
                continue
            else:
                return target in aList
        return False
