use std::rc::Rc;
use std::cell::RefCell;

// Definition for a binary tree node.
#[derive(Debug, PartialEq, Eq)]
pub struct TreeNode {
  pub val: i32,
  pub left: Option<Rc<RefCell<TreeNode>>>,
  pub right: Option<Rc<RefCell<TreeNode>>>,
}

impl TreeNode {
  #[inline]
  pub fn new(val: i32) -> Self {
    TreeNode {
      val,
      left: None,
      right: None
    }
  }
}

struct Solution {

}

impl Solution {
    pub fn inorder_traversal(root: Option<Rc<RefCell<TreeNode>>>) -> Vec<i32> {
        let mut result = Vec::new();
        Solution::helper(&root, &mut result);
        return result;
    }

    fn helper(root: &Option<Rc<RefCell<TreeNode>>>, list: &mut Vec<i32>) {
        if let Some(rc_node) = root {
            let node = rc_node.borrow();
            Solution::helper(&node.left, list);
            list.push(node.val);
            Solution::helper(&node.right, list);
        }
    }
}

fn main() {
    println!("Hello, world!");
}
