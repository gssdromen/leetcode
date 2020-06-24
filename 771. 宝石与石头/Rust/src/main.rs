use std::collections::HashMap;

struct Solution {

}

impl Solution {
    pub fn num_jewels_in_stones(j: String, s: String) -> i32 {
        let mut count = 0;
        let mut map = HashMap::new();
        for item in j.chars() {
            map.insert(item,0);
        }

        for charS in s.chars() {
            match map.get(&charS) {
                Some(_) => count+=1,
                None => {}
            }
        }
        return count;
    }
}

fn main() {
    Solution::num_jewels_in_stones("asdf".to_string(),"df".to_string());
    println!("Hello, world!");
}
