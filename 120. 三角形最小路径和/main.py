from typing import List

class Solution:
    def minimumTotal(self, triangle: List[List[int]]) -> int:
        n = len(triangle)
        f = [0] * n
        f[0] = triangle[0][0]
        print(f)
        for i in range(1, n):
            f[i] = f[i - 1] + triangle[i][i]
            print(f)
            for j in range(i - 1, 0, -1):
                print("loop:" + str(j))
                f[j] = min(f[j - 1], f[j]) + triangle[i][j]
                print("min:" + str(f[j]))
            f[0] += triangle[i][0]
        print(f)
        return min(f)

if __name__ == "__main__":
    # execute only if run as a script
    list = [[2],[3,4],[6,5,7],[4,1,8,3]]
    s = Solution()
    s.minimumTotal(list)