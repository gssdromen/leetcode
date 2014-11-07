#include<iostream>
#include<vector>
using namespace std;

/**
 * Definition for binary tree
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */
class Solution {
public:
    bool hasPathSum(TreeNode *root, int sum) {

    }

    bool helper(TreeNode *root,int sum, int num) {
        if (root == NULL){return;}
        if (num>sum || num+root->val>sum){return;}
        if (num+root->val == sum){
            return true;
        }else{
            helper(root->left, sum, num+root->val);
            helper(root->right, sum, num+root->val);

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
