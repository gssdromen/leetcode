#include <iostream>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 
class Solution {
public:
    bool isSymmetric(TreeNode* root) {
        if (root == nullptr)
        {
            return true;
        }
        
        return helper(root->left, root->right);
    }

    bool helper(TreeNode* left, TreeNode* right) {
        if (!left && !right) 
        {
            return true;
        }
        if (!left || !right)
        {
            return false;
        }

        bool flag1 = left->val == right->val;
        bool flag2 = helper(left->left, right->right);
        bool flag3 = helper(left->right, right->left);

        return flag1 && flag2 && flag3;
    }
};

int main() {
    Solution s = Solution();
    
    TreeNode root = TreeNode(3);
    TreeNode left = TreeNode(1);
    TreeNode right = TreeNode(1);
    root.left = &left;
    root.right = &right;

    cout << "a" << s.isSymmetric(&root) << "b" << endl;
    cout << "fasdf";
    return 0;
}

class Solution {
public:
    bool check(TreeNode *u, TreeNode *v) {
        queue <TreeNode*> q;
        q.push(u); q.push(v);
        while (!q.empty()) {
            u = q.front(); q.pop();
            v = q.front(); q.pop();
            if (!u && !v) continue;
            if ((!u || !v) || (u->val != v->val)) return false;

            q.push(u->left); 
            q.push(v->right);

            q.push(u->right); 
            q.push(v->left);
        }
        return true;
    }

    bool isSymmetric(TreeNode* root) {
        return check(root, root);
    }
};