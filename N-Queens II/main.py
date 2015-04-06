#!/usr/bin/python
# coding=utf-8

import math

class Solution:
    def __init__(self):
        self.final_results = 0

    # @return a list of lists of string
    def totalNQueens(self, n):
        start = []
        for x in xrange(n):
            start.append(['.' for x in xrange(n)])
        self.helper(n, start, 0, 0)
        return self.final_results

    def helper(self, n, result, row, col):
        if row == n:
            # answer = []
            # for line in result:
            #     temp = ''
            #     for item in line:
            #         temp += item
            #     answer.append(temp)
            self.final_results += 1
        else:
            for m in xrange(n):
                for i in xrange(row, n):
                    result[i] = ['.' for x in xrange(n)]
                result[row][m] = 'Q'
                if self.isValid(result, n, row, m):
                    self.helper(n, result, row+1, 0)
                else:
                    result[row] = ['.' for x in xrange(n)]

    def isValid(self, s, n, row, col):
        for x in xrange(n):
            if 'Q' not in s[x] and x <= row:
                return False
        for i in xrange(row):
            x = s[i]
            y = s[i].index('Q')
            if y == col:
                return False
            if abs(col - y) == abs(row - i):
                return False
        return True
        #     for y in xrange(n):
        #         # print str(x) + ':' + str(y)
        #         if s[x][y] == 'Q':
        #             p, q = x, y
        #             # print str(x) + ':' + str(y)
        #             # 判断正对角线唯一
        #             while p-1 >= 0 and q-1 >= 0:
        #                 if s[p-1][q-1] == 'Q':
        #                     return False
        #                 p -= 1
        #                 q -= 1
        #             p, q = x, y
        #             while p+1 < n and q+1 < n:
        #                 if s[p+1][q+1] == 'Q':
        #                     return False
        #                 p += 1
        #                 q += 1
        #             # 判断逆对角线唯一
        #             p, q = x, y
        #             while p-1 >= 0 and q+1 < n:
        #                 if s[p-1][q+1] == 'Q':
        #                     return False
        #                 p -= 1
        #                 q += 1
        #             p, q = x, y
        #             while p+1 < n and q-1 >= 0:
        #                 if s[p+1][q-1] == 'Q':
        #                     return False
        #                 p += 1
        #                 q -= 1
        #             # 判断所在行与列唯一
        #             for i in xrange(n):
        #                 if i != x and s[i][y] == 'Q':
        #                     return False
        #                 if i != y and s[x][i] == 'Q':
        #                     return False
        # return True


ss = Solution()
print ss.totalNQueens(9)
