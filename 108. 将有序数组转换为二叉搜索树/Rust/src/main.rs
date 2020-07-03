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

struct Solution {}

use std::rc::Rc;
use std::cell::RefCell;

impl Solution {
    pub fn sorted_array_to_bst(nums: Vec<i32>) -> Option<Rc<RefCell<TreeNode>>> {
        if nums.is_empty() {
            return None;
        } else {
            return Solution::helper(&nums, 0, nums.len());
        }
    }

    fn helper(nums: &Vec<i32>, start: usize, end: usize) -> Option<Rc<RefCell<TreeNode>>> {
        if start >= end {
            return None;
        } else {
            let mid = (start + end) / 2;
            let node = Rc::new(RefCell::new(TreeNode::new(nums[mid])));
            node.borrow_mut().left = Solution::helper(nums, start, mid);
            node.borrow_mut().right = Solution::helper(nums, mid + 1, end);
    
            return Some(node);
        }
    }
}

fn main() {
    println!("Hello, world!");
}
