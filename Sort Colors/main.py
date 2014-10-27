class Solution:
    # @param A a list of integers
    # @return nothing, sort in place
    def sortColors(self, A):
        self.Qsort(A, 0, len(A)-1)
        return A

    def Qsort(self, A, low, high):
        if (low < high):
            pivotIndex = self.partition(A, low, high)
            self.Qsort(A, low, pivotIndex-1)
            self.Qsort(A, pivotIndex+1, high)

    def partition(self, A, low, high):
        pivot = A[low]
        while low<high:
            while low<high and A[high]>= pivot:
                high = high - 1
            A[low] = A[high]
            while low<high and A[low]<= pivot:
                low = low + 1
            A[high] = A[low]
        A[low] = pivot
        return low

su = Solution()
print su.sortColors([4, 2, 5, 1, 3])
