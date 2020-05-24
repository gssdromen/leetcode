from typing import List

class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
        return self.quickSort(nums)
    
    def quickSort(self, nums: List[int]) -> List[int]:
        if len(nums) < 1:
            return []
        if len(nums) == 1:
            return nums
        mid = self.partition(nums, 0, len(nums) - 1)
        return self.quickSort(nums[: mid]) + [nums[mid]] + self.quickSort(nums[mid+1:])

    def partition(self, nums: List[int], left: int, right: int) -> int:
        pivot = nums[right]
        i = 0
        for j in range(left, right):
            if nums[j] < pivot:
                nums[i], nums[j] = nums[j], nums[i]
                i += 1
        nums[i], nums[right] = nums[right], nums[i]
        return i

s = Solution()
result = s.sortArray([1,5,2,35,6,0,-4,2,123,45,652])
print("result:")
print(result)