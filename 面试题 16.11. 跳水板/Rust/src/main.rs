struct Solution {}

impl Solution {
    pub fn diving_board(shorter: i32, longer: i32, k: i32) -> Vec<i32> {
        let mut result = Vec::new();
        if k == 0 {
            return result;
        }
        if longer == shorter {
            result.push(shorter * k);
            return result;
        }
        for i in 0..=k {
            let temp = shorter * (k - i) + longer * i;
            result.push(temp);
        }
        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
