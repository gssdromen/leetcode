from typing import List

class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        count = len(nums)
        left = 0
        right = count - 1
        while left <= right:
            mid = left + ((right - left) >> 1)
            if target == nums[mid]:
                return mid
            if target > nums[mid]:
                left = mid + 1
            else:
                right = mid - 1
        return left

if __name__ == "__main__":
    s = Solution()
    result = s.searchInsert([1,3,5,6], 5)
    print(result)
