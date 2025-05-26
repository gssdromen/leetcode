struct Solution {

}

use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut hash: HashMap<i32, i32> = HashMap::new();
        let length = nums.len();

        for i in 0..length {
            let rest = nums[i];
            if hash.contains_key(&rest) {
                let index = hash[&rest];
                return vec![index, i as i32];
            } else {
                hash.insert(target - rest, i as i32);
            }
        }
        return vec![];
    }
}

fn main() {
    let result = Solution::two_sum(vec![3,3], 6);
    println!("{:?}", result);
}