class Solution:
    # @param A  a list of integers
    # @param m  an integer, length of A
    # @param B  a list of integers
    # @param n  an integer, length of B
    # @return nothing
    def merge(self, A, m, B, n):
        startIndex=0
        for num in B:
            print "==="
            for i in range(0,m):
                print i
                if m == 0:
                    A.insert(i,num)
                    m=m+1
                elif num<A[i]:
                    A.insert(i,num)
                    m=m+1
                    startIndex=i
                    break
                elif i==m-1:
                    A.insert(m,num)
                    m=m+1
                    startIndex=i
                    break
        return A

su = Solution()
# print su.merge([],0,[1],1)
print su.merge([1,2,3,0,0,0],3,[2,5,6],3)
