class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        num1Last = m - 1
        num2Last = n - 1
        totalLast = m + n - 1
        while num2Last >= 0:
            if num1Last >= 0 and nums1[num1Last] > nums2[num2Last]:
                nums1[totalLast] = nums1[num1Last]
                num1Last -= 1
            else:
                nums1[totalLast] = nums2[num2Last]
                num2Last -= 1
            totalLast -= 1