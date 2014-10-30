class Solution:
    # @param prices, a list of integer
    # @return an integer
    def maxProfit(self, prices):
        length = len(prices)
        if length == 0:
            return 0
        minPrice = prices[0]
        maxProfit = 0
        for i in range(1, length):
            if prices[i] < minPrice:
                minPrice = prices[i]
            temp = prices[i] - minPrice
            maxProfit = max(maxProfit, temp)
        return maxProfit


su = Solution()
print su.maxProfit([1,3,2,4])
