use std::cmp::max;

struct Solution {

}

impl Solution {
    pub fn kids_with_candies(candies: Vec<i32>, extra_candies: i32) -> Vec<bool> {
        let mut result = Vec::new();

        let mut maxNumber = 0;
        for num in &candies {
            maxNumber = max(maxNumber, *num);
        }

        for num in &candies {
            if num + extra_candies >= maxNumber {
                result.push(true)
            } else {
                result.push(false)
            }
        }

        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
