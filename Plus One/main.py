class Solution:
    # @param digits, a list of integer digits
    # @return a list of integer digits
    def plusOne(self, digits):
        temp = self.reserve(digits)
        if len(temp) == 1 and temp[0]==9:
            return [1, 0]
        if temp[0] + 1 >= 10:
            flag = 1
        else:
            flag = 0
        temp[0] = (temp[0] + 1) % 10
        for i in range(1, len(temp)):
            a = temp[i] + flag
            temp[i] = a % 10
            if a >= 10:
                flag = 1
            else:
                flag = 0
            if i == len(temp)-1 and flag == 1:
                temp.append(1)
        return self.reserve(temp)

    def reserve(self, digits):
        a = []
        for i in range(len(digits)-1, -1, -1):
            a.append(digits[i])
        return a


su = Solution()
print su.plusOne([9])
