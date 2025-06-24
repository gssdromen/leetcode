struct Solution {}

impl Solution {
    pub fn merge(nums1: &mut Vec<i32>, m: i32, nums2: &mut Vec<i32>, n: i32) {
        if n == 0 {
            return
        }
        let mut result: Vec<i32> = vec![];

        let mut p1 = 0;
        let mut p2 = 0;

        while p1 < m as usize || p2 < n as usize {
            if p1 >= m as usize {
                result.push(nums2[p2]);
                p2 += 1;
                continue;
            }
            if p2 >= n as usize {
                result.push(nums1[p1]);
                p1 += 1;
                continue;
            }
            if nums1[p1] < nums2[p2] {
                result.push(nums1[p1]);
                p1 += 1;
            } else {
                result.push(nums2[p2]);
                p2 += 1;
            }
        }

        *nums1 = result;
    }
}

fn main() {
    let mut nums1 = vec![1,2,3,0,0,0];
    let mut nums2 = vec![2,5,6];
    let result = Solution::merge(&mut nums1, 3, &mut nums2, 3);
    println!("{:?}", nums1);
}
