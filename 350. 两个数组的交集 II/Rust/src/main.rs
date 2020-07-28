struct Solution {}

use std::collections::HashMap;
impl Solution {
    pub fn intersect(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<i32> {
        let mut result = Vec::new();

        if nums1.len() > nums2.len() {
            return Solution::intersect(nums2, nums1);
        }

        let mut m: HashMap<i32, i32> = HashMap::new();
        for num in nums1 {
            match m.get(&num) {
                Some(n) => {m.insert(num, n+1);},
                None => {m.insert(num, 1);}
            }
        }
        for num in nums2 {
            if m.contains_key(&num) {
                result.push(num);
                let tmp = m.get(&num).unwrap() - 1;
                if tmp == 0 {
                    m.remove(&num);
                } else {
                    m.insert(num, tmp);
                }
            }
        }
        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
