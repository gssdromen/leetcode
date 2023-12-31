struct Solution {

}

impl Solution {
    pub fn remove_duplicates(nums: &mut Vec<i32>) -> i32 {
        if nums.len() < 2 {
            return nums.len() as i32
        }

        let mut left: usize = 0;
        let mut right: usize = 1;
        while right < nums.len() {
            if nums[left] == nums[right] {
                right += 1;
            } else {
                nums[left + 1] = nums[right];
                left += 1;
                right += 1;
            }
        }
        return left as i32 + 1;
    }
}

fn main() {
    let mut list = vec![1,1,2];
    let result = Solution::remove_duplicates(&mut list);
    println!("{:?}", result);
}