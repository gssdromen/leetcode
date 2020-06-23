struct Solution {

}

impl Solution {
    pub fn xor_operation(n: i32, start: i32) -> i32 {
        let mut nums = Vec::new();
        let mut result = 0;
        for i in 0..n {
            nums.push(start + 2 * i);
        }

        for num in nums {
            result = result ^ num;
        }

        return result
    }
}

fn main() {
    println!("Hello, world!");
}
