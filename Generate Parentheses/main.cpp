#include<iostream>
#include<vector>
#include<string>
using namespace std;

class Solution {
public:
    vector<string> result;
    vector<string> generateParenthesis(int n) {
        helper(n,n,"");
        // result.push_back(" df");
        return result;
    }

    void helper(int left, int right, string s){
        if (left==0 && right==0){
            result.push_back(s);
        }
        if (left>0){
            helper(left-1, right, s+"(");
        }
        if (right>0 && left<right){
            helper(left, right-1, s+")");
        }
    }
};

int main(void){
    Solution *ss = new Solution();
    vector<string> result = ss->generateParenthesis(6);
    // cout<<ss->result[0];
    for(vector<string>::iterator it=result.begin();it!=result.end();it++){
        cout<<*it<<endl;
    }
    return 0;
}
