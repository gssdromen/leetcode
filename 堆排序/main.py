from typing import List
import math

class Solution:
    def heapSort(self, nums: List[int]) -> List[int]:
        # 第一次构建大顶堆
        for i in range(math.floor(len(nums) / 2) - 1, -1, -1):
            self.maxHeapify(nums, i, len(nums))

        nums[0], nums[-1] = nums[-1], nums[0]
        for i in range(len(nums) - 2, 0, -1):
            self.maxHeapify(nums, 0, i + 1)
            nums[0], nums[i] = nums[i], nums[0]
            
        print(nums)

    def maxHeapify(self, nums: List[int], index: int, length: int):
        leftSonIndex = index * 2 + 1
        rightSonIndex = leftSonIndex + 1
        maxIndex = index

        if leftSonIndex < length and nums[index] < nums[leftSonIndex]:
            maxIndex = leftSonIndex
        if rightSonIndex < length and nums[index] < nums[rightSonIndex] and nums[leftSonIndex] < nums[rightSonIndex]:
            maxIndex = rightSonIndex
        nums[maxIndex], nums[index] = nums[index], nums[maxIndex]

        if maxIndex != index:
            self.maxHeapify(nums, maxIndex, length)


s = Solution()
s.heapSort([5,6,7,1,123,543,456,56,12,3])