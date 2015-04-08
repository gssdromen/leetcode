class Solution:
    # @param num, a list of integer
    # @return an integer
    def rob(self, num):
        got_money = [0 for i in xrange(len(num))]
        if not num:
            return 0
        if len(num) == 1:
            return num[0]
        if len(num) == 2:
            return max(num[0], num[1])
        for i in xrange(len(num)):
            got_money[i] = max(got_money[i-2] + num[i], got_money[i-1])

        return got_money[len(num)-1]
