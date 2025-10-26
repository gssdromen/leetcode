// Definition for singly-linked list.
#[derive(PartialEq, Eq, Clone, Debug)]
pub struct ListNode {
  pub val: i32,
  pub next: Option<Box<ListNode>>
}

impl ListNode {
  #[inline]
  fn new(val: i32) -> Self {
    ListNode {
      next: None,
      val
    }
  }
}

struct Solution;

impl Solution {
    pub fn add_two_numbers(l1: Option<Box<ListNode>>, l2: Option<Box<ListNode>>) -> Option<Box<ListNode>> {
        let mut head = Some(Box::new(ListNode::new(0)));
        let mut p = &mut head;
        let mut p1 = &l1;
        let mut p2 = &l2;
        let mut add1 = false;

        while *p1 != None || *p2 != None || add1 {
            let mut num = Self::get_val(p1) + Self::get_val(p2);
            if add1 {
                num += 1;
            }
            add1 = num >= 10;
            p.as_mut().unwrap().next = Some(Box::new(ListNode::new(num % 10)));
            p = &mut p.as_mut().unwrap().next;
            p1 = match p1 {
                Some(n) => &n.next,
                None => &None,
            };
            p2 = match p2 {
                Some(n) => &n.next,
                None => &None,
            };
        }
        head.unwrap().next
    }

    fn get_val(node: &Option<Box<ListNode>>) -> i32 {
        match node {
            None => 0,
            Some(n) => {
                n.val
            }
        }
    }
}

fn main() {
    println!("Hello, world!");
}
