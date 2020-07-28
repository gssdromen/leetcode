struct Solution {

}

impl Solution {
    pub fn is_interleave(s1: String, s2: String, s3: String) -> bool {
        let n = s1.len();
        let m = s2.len();
        let t = s3.len();
        let s1List = s1.as_bytes();
        let s2List = s2.as_bytes();
        let s3List = s3.as_bytes();
        if (n+m) != t {
            return false;
        }

        let mut f = Vec::new();
        for i in 0..=n {
            let mut temp = vec![false; m+1];
            f.push(temp);
        }
        f[0][0] = true;
        for i in 0..=n {
            for j in 0..=m {
                if i > 0  || j > 0 {
                    let p = i + j - 1;
                    if i > 0 {
                        f[i][j] = f[i][j] || (f[i-1][j] && s1List[i-1] == s3List[p])
                    }
                    if j > 0 {
                        f[i][j] = f[i][j] || (f[i][j-1] && s2List[j-1] == s3List[p])
                    }
                }
            }
        }

        return f[n][m];
    }
}

fn main() {
    let s1 = String::from("a");
    let s2 = String::from("bc");
    let s3 = String::from("bac");
    Solution::is_interleave(s1, s2, s3);
}
