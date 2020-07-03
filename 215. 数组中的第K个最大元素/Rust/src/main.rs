struct Solution {}

impl Solution {
    pub fn find_kth_largest(nums: Vec<i32>, k: i32) -> i32 {
        let mut nums = nums;
        Solution::heapSort(&mut nums, k);

        // return nums[nums.len() - k as usize];
        return nums[0];
    }

    fn heapSort(nums: &mut Vec<i32>, k: i32) {
        let count = nums.len();
        let start = if count / 2 == 0 {0} else {count/2-1};
        
        let mut num = 0;
        
        for i in (0..=start).rev() {
            Solution::maxHeapify(nums, i as i32, count as i32);
        }
        num += 1;
        if num == k {
            return;
        }
        Solution::swap(nums, 0, (count-1));
        
        for l in (0..=count-2).rev() {
            Solution::maxHeapify(nums, 0, l as i32);
            num += 1;
            if num == k {
                return;
            }
            Solution::swap(nums, 0, l);
        }
    }

    fn maxHeapify(nums: &mut Vec<i32>, index: i32, length: i32) {
        if length <= 0 {
            return;
        }
        let mut topIndex = index;
        let leftIndex = 2 * index + 1;
        let rightIndex = leftIndex + 1;
        
        
        if leftIndex < length && nums[topIndex as usize] < nums[leftIndex as usize] {
            topIndex = leftIndex;
        }
        if rightIndex < length && nums[topIndex as usize] < nums[rightIndex as usize] {
            topIndex = rightIndex;
        }

        if topIndex != index {
            Solution::swap(nums, topIndex as usize, index as usize);
            // println!("test");
            Solution::maxHeapify(nums, topIndex, length);
        }
    }

    fn swap(nums: &mut Vec<i32>, i: usize, j: usize) {
        if i == j {
            return;
        }
        let temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
    }
}

fn main() {
    let mut list = vec![3,1];
    
    println!("{:?}", Solution::find_kth_largest(list, 1));
}
