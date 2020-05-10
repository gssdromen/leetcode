#include <vector>
#include <iostream>

using namespace std;

class Solution {
public:
    int jump(vector<int>& nums) {
        if (nums.size() == 1) {
            return 0;
        }
        if (nums.size() == 2 && nums[0] > 0) {
            return 1;
        }

        int length = nums.size() - 1;
        int step = 0;
        int index = 0;
        int maxRight = 0;
        int flag = 1;

        while (flag)
        {
            cout << "===============" << endl;

            // 取这步的数字
            step++;
            int stepLength = nums[index];
            // 这一步可以满足条件，跳出循环
            if (stepLength >= length)
            {
                flag = false;
                continue;
            }
            // 这步最多可以走几格
            cout << "这步最多走几格：" << stepLength << endl;

            // 贪心判断，这次要走几格，走到哪一格
            int tempIndex = 0;
            int tempMax = 0;
            int count = min(stepLength + index + 1, (int)nums.size());
            cout << "循环开始Index：" << index + 1 << endl;
            cout << "循环结束Index：" << count << endl;
            for (int i = index + 1; i < count; i++)
            {
                if (nums[i] + i >= tempMax) {
                    tempMax = nums[i] + i;
                    tempIndex = i;
                }
            }
            cout << "下步最多走几格：" << tempMax << endl;
            cout << "下步最多走几格Index：" << tempIndex << endl;

            maxRight = tempMax;
            index = tempIndex;
            // 下一步的MaxRight
            cout << "能走到的最远：" << maxRight << endl;

            // 下一步可以满足条件，跳出循环
            if (maxRight >= length)
            {
                flag = false;
                step++;
                continue;
            }
        }

        return step;
    }
};

int main()
{
    Solution s;
    int a[5] = {2,3,1,1,4};
    int b[3] = {1,2,3};
    int c[3] = {1,3,2};
    int d[12] = {10,9,8,7,6,5,4,3,2,1,1,0};
    int e[3] = {3,2,1};

    vector<int> input;
    //将a的所有元素插入到b中
    // input.insert(input.begin(), a, a+5);
    // input.insert(input.begin(), b, b+3);
    input.insert(input.begin(), c, c+3);
    // input.insert(input.begin(), d, d+12);
    // input.insert(input.begin(), e, e+3);
    cout << s.jump(input);
    return 0;
}