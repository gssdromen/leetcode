struct Solution {}

use std::cmp::max;
impl Solution {
    pub fn max_profit(prices: Vec<i32>) -> i32 {
        let n = prices.len();
        if n == 0 {
            return 0;
        }
        // f[i][0]: 手上持有股票的最大收益
        // f[i][1]: 手上不持有股票，并且处于冷冻期中的累计最大收益
        // f[i][2]: 手上不持有股票，并且不在冷冻期中的累计最大收益
        let mut f = Vec::new();
        for _ in 0..n {
            let mut tmp = vec![0;3];
            f.push(tmp);
        }
        f[0][0] = -prices[0];
        for i in 1..n {
            f[i][0] = max(f[i-1][0], f[i-1][2] - prices[i]);
            f[i][1] = f[i-1][0] + prices[i];
            f[i][2] = max(f[i-1][1], f[i-1][2]);
        }

        return max(f[n-1][1], f[n-1][2]);
    }
}

fn main() {
    println!("Hello, world!");
}
