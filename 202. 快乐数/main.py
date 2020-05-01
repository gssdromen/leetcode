class Solution:
    def isHappy(self, n: int) -> bool:
        slow = self.getNext(n)
        fast = self.getNext(self.getNext(n))

        while slow != fast:
            slow = self.getNext(slow)
            fast = self.getNext(self.getNext(fast))

        return fast == 1

    def getNext(self, n: int) -> int:
        sum = 0
        
        while n > 0:
            thisNumber = n % 10
            sum += thisNumber * thisNumber
            n = (int)(n / 10)

        return sum

sol = Solution()

print(sol.isHappy(19))