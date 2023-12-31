from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        if len(nums) == 0:
            return []
        if len(nums) == 1:
            if nums[0] == target:
                return [0]
            else:
                return []
        if len(nums) == 2:
            if nums[0] + nums[1] == target:
                return [0, 1]
            else:
                return []
        for i in range(0, len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]
        return []

solution = Solution()
result = solution.twoSum([3,2,4], 6)
print(result)
