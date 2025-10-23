#include "solution.h"
using namespace std;

int Solution::maxArea(vector<int>& height) {
    int left = 0;
    int right = height.size() - 1;
    int sum = 0;

    while (left < right) {
        int w = right - left;
        int h = min(height[left], height[right]);
        sum = max(sum, w * h);
        if (height[left] < height[right]) {
            left++;
        } else {
            right--;
        }
    }
    return sum;
}
