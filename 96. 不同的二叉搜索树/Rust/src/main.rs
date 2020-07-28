struct Solution {}

impl Solution {
    pub fn num_trees(n: i32) -> i32 {
        let mut G = vec![0; (n+1) as usize];
        G[0] = 1;
        G[1] = 1;

        for i in 2..=n {
            for j in 1..=i {
                G[i as usize] += G[(j-1) as usize] * G[(i-j) as usize];
            }
        }

        return G[n as usize] as i32;
    }
}

impl Solution {
    pub fn num_trees2(n: i32) -> i32 {
        let mut C: u64 = 1;
        for i in 0..n {
            C = C * 2 * ((2 * i + 1) as u64) / ((i + 2) as u64);
        }
        return C as i32;
    }
}

fn main() {
    println!("Hello, world!");
}
