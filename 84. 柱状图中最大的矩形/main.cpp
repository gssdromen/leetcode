#include <vector>
#include <algorithm>
#include <iostream>
#include <stack>

using namespace std;

class Solution {
public:
    int largestRectangleArea2(vector<int>& heights) {
        int ans = 0;

        stack<int> s;
        
        heights.insert(heights.begin(), 0);
        heights.push_back(0);
        int count = heights.size();

        for (int i = 0; i < count; i++)
        {
            while (!s.empty() && heights[s.top()] > heights[i])
            {
                int index = s.top();
                s.pop();
                ans = max(ans, (i - s.top() - 1) * heights[index]);
            }
            s.push(i);
        }
        return ans;
    }

    int largestRectangleArea(vector<int>& heights) {
        int count = heights.size();

        int ans = 0;

        for (int i = 0; i < count; i++)
        {
            int minHeight = INT_MAX;
            for (int j = i; j < count; j++)
            {
                minHeight = min(minHeight, heights[j]);
                ans = max(ans, minHeight * (j - i + 1));
            }
        }
        return ans;
    }
};

int main()
{
    Solution s = Solution();
    int arr[5] = {2,1,2};   
    vector<int> vec(arr, arr + 3);
    cout << s.largestRectangleArea2(vec);
}