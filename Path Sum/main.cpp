#include<iostream>
#include<vector>
using namespace std;


// Definition for binary tree
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution {
public:
    bool hasPathSum(TreeNode *root, int sum) {
        return helper(root, sum, 0);
    }

    bool helper(TreeNode *root,int sum, int num) {
        if (root == NULL){return false;}
        // if (num>sum || num+root->val>sum){return false;}
        if (root->left == NULL && root->right == NULL){
            // cout<<num+root->val<<endl;
            if(num+root->val == sum){
                return true;
            }
            return false;
        }else{
            bool ll=helper(root->left, sum, num+root->val);
            bool rr=helper(root->right, sum, num+root->val);
            return ll || rr;
        }
    }
};

int main(void){
    Solution *ss = new Solution();
    TreeNode *node1 = new TreeNode(-2);
    node1->right = new TreeNode(-3);
    cout<<ss->hasPathSum(node1, -5)<<endl;
    // vector<string> result = ss->hasPathSum(6);
    // cout<<ss->result[0];
    // for(vector<string>::iterator it=result.begin();it!=result.end();it++){
    //     cout<<*it<<endl;
    // }
    return 0;
}
