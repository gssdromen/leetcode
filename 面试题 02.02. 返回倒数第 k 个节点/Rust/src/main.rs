use std::option::Option::Some;

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

struct Solution {

}

impl Solution {
    pub fn kth_to_last(head: Option<Box<ListNode>>, k: i32) -> i32 {
        let mut fast = &head;
        let mut slow = &head;

        for _ in 0..k {
            if let Some(node) = fast {
                fast = &node.next;
            }
        }

        while let Some(_) = fast {
            if let Some(node) = fast {
                fast = &node.next;
            }
            if let Some(node) = slow {
                slow = &node.next;
            }
        }

        return slow.as_ref().unwrap().val;
    }
}

fn main() {
    println!("Hello, world!");
}
