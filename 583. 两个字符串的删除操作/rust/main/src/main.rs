use std::cmp::max;

struct Solution {}

impl Solution {
    pub fn min_distance(word1: String, word2: String) -> i32 {
        let lcs = Self::longest_common_subsequence(word1.clone(), word2.clone());
        let total_length = word1.len() as i32 + word2.len() as i32;
        return total_length - 2 * lcs;
    }

    pub fn longest_common_subsequence(text1: String, text2: String) -> i32 {
        let list1: Vec<_> = text1.chars().collect();
        let list2: Vec<_> = text2.chars().collect();

        let mut matrix = vec![vec![0; list1.len() + 1]; list2.len() + 1];

        for m in 1 ..= list1.len() {
            for n in 1 ..= list2.len() {
                if list1[m - 1] == list2[n - 1] {
                    matrix[n][m] = matrix[n-1][m-1] + 1;
                } else {
                    let top_value = matrix[n-1][m];
                    let left_value = matrix[n][m-1];
                    matrix[n][m] = max(top_value, left_value);
                }
            }
        }
        println!("{:?}", matrix);
        matrix[list2.len()][list1.len()]
    }
}

fn main() {
    let s = Solution::longest_common_subsequence("abcde".to_string(), "ace".to_string());
    
    println!("{}", s);
}