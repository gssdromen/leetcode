#[derive(Default)]
struct CQueue {
    p: Vec<i32>,
    q: Vec<i32>
}


/**
 * `&self` means the method takes an immutable reference.
 * If you need a mutable reference, change it to `&mut self` instead.
 */
impl CQueue {
    
    fn new() -> Self {
        return Default::default()
    }
    
    fn append_tail(&mut self, value: i32) {
        self.p.push(value);
    }
    
    fn delete_head(&mut self) -> i32 {
        match self.q.pop() {
            Some(val) => val,
            None => {
                self.p.reverse();
                self.q.append(&mut self.p);
                self.q.pop().unwrap_or(-1)
            }
        }
    }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * let obj = CQueue::new();
 * obj.append_tail(value);
 * let ret_2: i32 = obj.delete_head();
 */

fn main() {
    println!("Hello, world!");
}
