struct Solution {}

impl Solution {
    pub fn fib(n: i32) -> i32 {
        // 特殊规定F(0) = 0
        if n == 0 {
            return 0;
        }
        let n = n as usize;
        // 初始化数组, 要第二个元素，则需要
        let mut dp = vec![0; n];

        for i in 0..n {
            if i == 0 || i == 1 {
                dp[i] = 1;
            } else {
                dp[i] = dp[i - 1] + dp[i - 2];
            }
        }

        dp[n - 1]
    }
}

fn main() {
    let result= Solution::fib(10);
    println!("{}", result);
}
