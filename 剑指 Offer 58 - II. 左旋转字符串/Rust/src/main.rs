struct Solution {

}

impl Solution {
    pub fn reverse_left_words(s: String, n: i32) -> String {
        let m = n as usize;
        let p1 = &s.as_str()[m..];
        let p2 = &s.as_str()[..m];

        let mut s1 = p1.to_string();
        let s2 = p2.to_string();
        s1 += &s2;
        return s1;
    }
}

fn main() {
    println!("Hello, world! {}", Solution::reverse_left_words("abcd".to_string(),2));
}
