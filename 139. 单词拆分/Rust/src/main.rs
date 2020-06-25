struct Solution {
    
}

use std::collections::HashSet;

impl Solution {
    pub fn word_break(s: String, word_dict: Vec<String>) -> bool {
        let mut wordSet = HashSet::new();
        for elem in word_dict {
            wordSet.insert(elem);
        }

        let mut dp: Vec<bool> = vec![false; s.len() + 1];
        dp[0] = true;
        for i in 1..=s.len() {
            for j in 0..i {
                let word = s.as_str()[j..i].to_string();
                if dp[j] && wordSet.contains(&word) {
                    dp[i] = true;
                    break;
                }
            }
        }

        return dp[s.len()];
    }
}

fn main() {
    let s = String::from("leetcode");
    let a = String::from("leet");
    let b = String::from("code");
    let v = vec![a,b];
    Solution::word_break(s, v);
}
