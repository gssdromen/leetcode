struct Solution {

}

impl Solution {
    pub fn is_match(s: String, p: String) -> bool {
        // Solution::check_pattern(&p);
        let (n, m) = (s.len(), p.len());
        let s_str: Vec<char> = (String::from(" ") + &s).chars().collect();
        let p_str: Vec<char> = (String::from(" ") + &p).chars().collect();
        let mut f = vec![vec![false; p_str.len()]; s_str.len()];
        f[0][0] = true;
        for i in 0..=n {
            for j in 1..=m {
                let (a, b, c) = (s_str[i], p_str[j], p_str[j - 1]);
                if (a == b || b == '.') && (i > 0 && f[i - 1][j - 1]) {
                    f[i][j] = true;
                }
                if b == '*' {
                    if f[i][j - 2] {
                        f[i][j] = true;
                    }
                    if i > 0 && (f[i - 1][j - 2] || f[i - 1][j]) && (a == c || c == '.') {
                        f[i][j] = true;
                    }
                }
            }
        }
        f[n][m]
    }
}

fn main() {
    println!("Hello, world!");
}
