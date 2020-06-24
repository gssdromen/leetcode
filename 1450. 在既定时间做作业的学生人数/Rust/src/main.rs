struct Solution {

}

impl Solution {
    pub fn busy_student(start_time: Vec<i32>, end_time: Vec<i32>, query_time: i32) -> i32 {
        let mut count = 0;
        for n in 0..start_time.len() {
            if query_time < start_time[n] || query_time > end_time[n] {
                continue;
            }
            count += 1;
        }
        
        count
    }
}

fn main() {
    println!("Hello, world!");
}
