struct Solution {}

impl Solution {
    pub fn decompress_rl_elist(nums: Vec<i32>) -> Vec<i32> {
        let mut result: Vec<i32> = Vec::new();
        if nums.len() == 0 {
            return result;
        }

        let mut countP  = 0;
        let mut numberP = 1;

        while numberP < nums.len() {
            for _ in 0..nums[countP] {
                result.push(nums[numberP])
            }
            numberP += 2;
            countP += 2;
        }

        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
