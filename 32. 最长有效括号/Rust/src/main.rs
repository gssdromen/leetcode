struct Solution {}


impl Solution {
    pub fn longest_valid_parentheses(s: String) -> i32 {
        let mut maxAns = 0;
        let count = s.len();
        let sList = s.as_bytes();
        let mut dp: Vec<i32> = vec![0; count];

        for i in 1..count {
            if sList[i] == b')' {
                let temp = i - dp[i - 1] as usize;
                if sList[i-1] == b'(' {
                    if i >= 2 {
                        dp[i] = dp[i-2] + 2;
                    } else {
                        dp[i] = 2;
                    }
                } else if (temp as i32) > 0 && sList[temp - 1] == b'(' {
                    if (temp as i32) >= 2 {
                        dp[i] = dp[i-1]+dp[temp - 2] + 2;
                    } else {
                        dp[i] = dp[i-1] + 2;
                    }
                }
                maxAns = std::cmp::max(maxAns, dp[i]);
            }
        }

        return maxAns;
    }
}

fn main() {
    println!("Hello, world!");
}
