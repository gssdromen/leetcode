struct Solution {}

impl Solution {
    pub fn search_insert(nums: Vec<i32>, target: i32) -> i32 {
        let count = nums.len();
        let mut left = 0 as i32;
        let mut right = (count - 1) as i32;
        while left <= right {
            let mid = left + ((right - left) >> 1);
            if target <= nums[mid as usize] {
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }
        return left as i32;
    }
}

fn main() {
    let result = Solution::search_insert(vec![1, 3, 5, 6], 0);
    println!("{:?}", result);
}
