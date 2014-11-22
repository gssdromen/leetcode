# coding=utf-8

class Solution:
    # @param A a list of integers
    # @param target an integer
    # @return a boolean
    def search(self, A, target):
        length = len(A)
        left = 0
        right = length - 1
        while left <= right:
            mid = (left+right)/2
            if A[mid] == target:
                return True
            # 左边有序
            if A[mid] > A[left]:
                if target < A[mid] and A[left] <= target:
                    right = mid - 1
                else:
                    left = mid + 1
            # 右边有序
            elif A[mid] < A[left]:
                if target > A[mid] and A[right] >= target:
                    left = mid + 1
                else:
                    right = mid - 1
            else:
                if A[left] == A[right]:
                    left += 1
                    right -= 1
                else:
                    left = mid + 1
        return False


ss = Solution()
print ss.search([3,1], 1)
print ss.search([1,3], 3)
# print ss.search([1,3,1,1,1], 3)
