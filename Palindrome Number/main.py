class Solution:
    # @return a boolean
    def isPalindrome(self, x):
        palindromeX = 0
        inputX = x
        while x>0:
            palindromeX = palindromeX*10 + (x % 10)
            x = x/10
        return palindromeX==inputX
