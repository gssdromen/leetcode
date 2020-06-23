struct Solution {

}

impl Solution {
    pub fn find_numbers(nums: Vec<i32>) -> i32 {
        let mut result = 0;

        for num in nums {
            if num.to_string().chars().count() % 2 == 0 {
                result += 1;
            }
        }

        return result;
    }
}

fn main() {
    println!("Hello, world!");
}
