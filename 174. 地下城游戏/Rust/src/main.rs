struct Solution {}

impl Solution {
    pub fn calculate_minimum_hp(dungeon: Vec<Vec<i32>>) -> i32 {
        let n = dungeon.len();
        let m = dungeon[0].len();

        let mut dp = Vec::new();
        for _ in 0..=n+1 {
            let mut tmp = vec![i32::max_value(); m+1];
            dp.push(tmp);
        }
        dp[n][m-1] = 1;
        dp[n-1][m] = 1;

        for i in (0..=n-1).rev() {
            for j in (0..=m-1).rev() {
                let minn = std::cmp::min(dp[i+1][j], dp[i][j+1]);
                dp[i][j] = std::cmp::max(minn - dungeon[i][j], 1);
            }
        }

        return dp[0][0];
    }
}

fn main() {
    println!("Hello, world!");
}
