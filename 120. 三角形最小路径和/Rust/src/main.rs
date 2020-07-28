struct Solution {}

impl Solution {
    pub fn minimum_total(triangle: Vec<Vec<i32>>) -> i32 {
        let n = triangle.len();
        let mut f = vec![0; n];
        f[0] = triangle[0][0];
        for i in 1..n {
            f[i] = f[i-1] + triangle[i][i];
            for j in (1..=i-1).rev() {
                f[j] = std::cmp::min(f[j-1], f[j]) + triangle[i][j];
            }
            f[0] += triangle[i][0];
        }
        match f.iter().min() {
            Some(min) => {return *min;},
            None => {return 0;}
        }
    }
}

fn main() {
    let a = vec![2];
    let b = vec![3,4];
    let c = vec![6,5,7];
    let d = vec![4,1,8,3];
    let tmp = vec![a,b,c,d];
    Solution::minimum_total(tmp);
    println!("Hello, world!");
}
