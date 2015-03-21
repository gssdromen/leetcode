class Solution:
    # @param n, an integer
    # @return an integer
    def hammingWeight(self, n):
        count = 0
        s = str(n)
        for item in s:
            if item == '1':
                count += 1
        return count
