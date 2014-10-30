class Solution:
    # @param num, a list of integer
    # @return an integer
    def findMin(self, num):
        start = 0
        end = len(num) - 1
        if end == -1:
            return
        if end == start:
            return num[start]
        while start+1 < end:
            mid = (start+end)/2
            if num[mid] > num[end]:
                start = mid
            else:
                end = mid
        return min(num[start], num[end])

su = Solution()
print su.findMin([4,5,1,2])
