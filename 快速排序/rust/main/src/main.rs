impl Solution {
    fn quick_sort(nums: &mut [i32], left: isize, right: isize) {
        if left <= right {                               // 1
            let mid = Solution::partition(nums, left, right);     // 2
            Solution::quick_sort(nums, left, mid - 1);   // 3
            Solution::quick_sort(nums, mid + 1, right);   // 4
        }
    }

    fn partition(arr: &mut [i32], lo: isize, hi: isize) -> isize {
        // -- Determine the pivot --
        // In Lomuto parition scheme,
        // the latest element is always chosen as the pivot.
        let pivot = arr[hi as usize];               // 1
        let mut i = lo;
    
        // -- Swap elements --
        for j in lo..hi {                           // 2
            if arr[j as usize] < pivot {
                arr.swap(i as usize, j as usize);
                i += 1;                             // 3
            }
        }
        // Swap pivot to the middle of two piles.
        arr.swap(i as usize, hi as usize);          // 4
        i // Return the final index of the pivot
    }
}
struct Solution {

}

fn main() {
    let mut list = [1,5,2,35,6,0,-4,2,123,45,652];
    Solution::quick_sort(&mut list, 0, 10);
    println!("{:?}", list);
}