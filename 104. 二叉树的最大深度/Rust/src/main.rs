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

// Definition for a binary tree node.
use std::rc::Rc;
use std::cell::RefCell;
use std::cmp;

impl Solution {
    pub fn max_depth(root: Option<Rc<RefCell<TreeNode>>>) -> i32 {
        if let Some(n) = root {
            let left = Self::max_depth(n.borrow().left.clone());
            let right = Self::max_depth(n.borrow().right.clone());
            return 1 + left.max(right);
        }

        return 0;
    }
}

fn main() {
    println!("Hello, world!");
}
