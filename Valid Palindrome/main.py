#!/usr/bin/python
# coding=utf-8

class Solution:
    # @param s, a string
    # @return a boolean
    def isPalindrome(self, s):
        candidates = 'qwertyuiopasdfghjklzxcvbnm0123456789'
        if s == '':
            return True
        if len(s) == 1:
            return True
        left = 0
        right = len(s) - 1
        while left < right:
            while s[left].lower() not in candidates and left < right:
                left += 1
            while s[right].lower() not in candidates and left < right:
                right -= 1
            if s[left].lower() == s[right].lower():
                pass
            if s[left].lower() != s[right].lower():
                return False
            left += 1
            right -= 1
        return True

ss = Solution()
print ss.isPalindrome('0k.;r0.k;')
