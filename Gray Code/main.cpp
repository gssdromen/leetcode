#include<iostream>
#include<vector>
using namespace std;

class Solution {
public:
    vector<int> grayCode(int n) {
        vector<int> result;
        int nSize = 1 << n;
        for (int i = 0; i < nSize; ++i){
            result.push_back((i>>1)^i);
        }
        return result;
    }
};

int main(void){
    Solution *ss = new Solution();
    vector<int> result = ss->grayCode(3);
    cout<<result[2];
    return 0;
}
