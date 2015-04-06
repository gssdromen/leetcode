#!/usr/bin/python
# coding=utf-8


class Solution:
    def __init__(self):
        self.final_result = []

    # @param s, a string
    # @return a list of lists of string
    def partition(self, s):
        self.helper(s, [], 0, len(s))
        return self.final_result

    def helper(self, s, result, start, length):
        if start == length:
            self.final_result.append(result[:])
            result = []
            return
        else:
            for i in xrange(start+1, length+1):
                if self.isPalindrome(s[start:i]):
                    result.append(s[start:i])
                    self.helper(s, result, i, length)
                    result.pop(len(result)-1)

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
print ss.partition("aab")
