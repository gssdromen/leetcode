struct Solution {}

impl Solution {
    pub fn climb_stairs(n: i32) -> i32 {
        let mut list: Vec<i32> = vec![0; (n+1) as usize];
        if n == 0 {
            return 1
        }
        if n == 1 {
            return 1
        }
        list[0] = 1;
        list[1] = 1;
        for i in 2 ..= n {
            list[i as usize] = list[(i-1) as usize] + list[(i-2) as usize]
        }
        return list[n as usize]
    }
}

fn main() {
    println!("Hello, world!");
    println!("{}", Solution::climb_stairs(2));
}
