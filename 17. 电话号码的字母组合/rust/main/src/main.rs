struct Solution {}

const map: [&str; 10] = [
    "", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz",
];

impl Solution {
    fn back_trace(result: &mut Vec<String>, s: &mut String, digits: &String, index: usize) {
        let len = digits.len();
        if len == index {
            result.push(s.to_string());
            return;
        }
        let digit = (digits.as_bytes()[index] - b'0') as usize;
        for i in map[digit].chars() {
            s.push(i);
            Self::back_trace(result, s, digits, index + 1);
            s.pop();
        }
    }

    pub fn letter_combinations(digits: String) -> Vec<String> {
        if digits.is_empty() {
            return vec![];
        }
        let mut res = vec![];
        let mut s = String::new();
        Self::back_trace(&mut res, &mut s, &digits, 0);
        res
    }
}

fn main() {
    println!("Hello, world!");
}
