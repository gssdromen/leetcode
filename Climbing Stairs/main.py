class Solution:
    # @param n, an integer
    # @return an integer
    def climbStairs(self, n):
        if n <= 1:
            return n
        f = []
        f.append(0)
        f.append(1)
        for i in range(2, n+2):
            f.append(f[i-1] + f[i-2])
        return f[n+1]

su = Solution()
print su.climbStairs(4)
