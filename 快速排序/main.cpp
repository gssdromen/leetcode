#include <vector>
#include <iostream>

using namespace std;

class Solution {
public:
    vector<int> sortArray(vector<int>& nums) {
        return quickSortArray(nums, 0, nums.size() - 1);
    }

    vector<int> quickSortArray(vector<int>& nums, int left, int right) {

    }

    void partition(vector<int>& nums, int left, int right) {

    }

    void swap(vector<int>& nums, int l, int r) {
        int temp = nums[l];
        nums[l] = nums[r];
        nums[r] = temp;
    }
};