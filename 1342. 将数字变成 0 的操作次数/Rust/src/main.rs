struct Solution {

}

impl Solution {
    pub fn number_of_steps (num: i32) -> i32 {
        let mut count = 0;
        let mut tmp = num;
        while tmp != 0 {
            if tmp % 2 == 0 {
                tmp = tmp / 2;
            } else {
                tmp = tmp - 1;
            }
            count = count + 1;
        }
        return count;
    }
}

fn main() {
    println!("Hello, world!");
}
