#include <vector>
#include <algorithm>
using namespace std;

class Solution {
public:
    int rob(vector<int>& nums) {
        int count = nums.size();
        if (count == 0)
        {
            return 0;
        }
        int dp[count];

        for (int i = 0; i < count; i++)
        {
            if (i == 0)
            {
                dp[i] = nums[i];
            } 
            else if (i == 1) 
            {
                dp[i] = nums[0] > nums[1] ? nums[0] : nums[1];
            } 
            else 
            {
                dp[i] = max(nums[i] + dp[i - 2], dp[i - 1]);
            }
        }
        
        return dp[count-1];
    }
};