class Solution:
    # @param num, a list of integers
    # @return an integer
    def majorityElement(self, num):
        n = len(num)
        pointNum = int(n/2)
        dic = {}
        finalNum = 0
        for aNum in num:
            if aNum not in dic:
                dic[aNum] = 0
            dic[aNum] += 1
            if dic[aNum] > pointNum:
                finalNum = aNum
                break
        return finalNum

ss = Solution()
print ss.majorityElement([1,1,1,2,3])
