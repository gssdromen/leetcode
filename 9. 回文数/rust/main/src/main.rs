struct Solution {}

impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
        let list: Vec<char> = x.to_string().chars().collect();
        let mut left = 0;
        let mut right = list.len() - 1;
        while left < right {
            if list[left] == list[right] {
                left += 1;
                right -= 1;
            } else {
                return false
            }
        }
        true
    }
}

fn main() {
    println!("Hello, world!");
}
