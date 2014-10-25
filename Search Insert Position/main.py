class Solution:
    # @param A, a list of integers
    # @param target, an integer to be inserted
    # @return integer
    def searchInsert(self, A, target):
        if target in A:
            for i in range(len(A)):
                if target == A[i]:
                    return i
        else:
            if target < min(A):
                 return 0
            elif target > max(A):
                 return len(A)
            else:
                for i in range(len(A)):
                    if target < A[i]:
                        return i

        # for i in range(len(A)):
        #     A[i] = str(A[i])
        # ss = ''.join(A)
        # tt = str(target)
        # if ss.find(tt) != -1:
        #     return ss.find(tt)
        # else:
        #     if target < int(min(ss)):
        #         return 0
        #     elif target > int(max(ss)):
        #         return len(ss)
        #     else:
        #         for i in range(len(ss)):
        #             if int(ss[i]) > target:
        #                 return i


su =Solution()
print su.searchInsert([1], 2)