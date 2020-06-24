struct Solution {

}

impl Solution {
    pub fn shuffle(nums: Vec<i32>, n: i32) -> Vec<i32> {
        let mut result: Vec<i32> = Vec::new();

        for i in n..2*n {
            result.push(nums[(i-n) as usize]);
            result.push(nums[(i) as usize]);
        }

        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
