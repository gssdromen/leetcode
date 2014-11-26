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
            elif num[mid] < num[end]:
                end = mid
            else:
                if num[start] == num[end]:
                    start += 1
                    end -= 1
                else:
                    end -= 1
        return min(num[start], num[end])

su = Solution()
print su.findMin([3,1,1])
