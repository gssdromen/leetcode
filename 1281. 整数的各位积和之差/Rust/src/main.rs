struct Solution {

}

impl Solution {
    pub fn subtract_product_and_sum(n: i32) -> i32 {
        let mut number = n;
        let mut ji = 1;
        let mut he = 0;
        while number > 0 {
            let num = number % 10;
            ji *= num;
            he += num;
            number = number / 10;
        }

        return ji - he;
    }
}

fn main() {
    println!("Hello, world!");
    Solution::subtract_product_and_sum(123);
}
