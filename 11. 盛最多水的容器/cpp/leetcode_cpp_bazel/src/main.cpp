#include "solution.h"
#include <iostream>
using namespace std;

int main() {
    Solution s;
    // cout << "Result: " << s.add(4, 5) << endl;
    vector<int> height = {1, 8, 6, 2, 5, 4, 8, 3, 7};
    cout << "Result: " << s.maxArea(height) << endl;
    return 0;
}
