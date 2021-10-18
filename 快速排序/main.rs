impl Solution {
    pub fn sort_array(num: Vec<i32>) -> Vec<i32> {
        return vec![];
    }

    fn quick_sort(num: &Vec<i32>) -> &Vec<i32> {
        if num.len() < 1 {
            return &vec![];
        }
        if num.len() == 1 {
            return num;
        }
        let mid = Solution::partition(&num, 0, num.len() - 1);
        let left_slice = Solution::quick_sort(num[..mid]);
        let right_slice = Solution::quick_sort(num[mid+1..]);
        let temp = [left_slice, vec![num[mid]], right_slice].concat();
        return temp;
    }

    fn partition(num: &Vec<i32>, left: usize, right: usize) -> usize {
        let pivot = num[right];
        let i = left;
        for j in left .. right {
            if num[j] > pivot {
                Solution::swap_here(num, i, j);
                i += 1;
            }
        }
        Solution::swap_here(num, i, right);
        return i;
    }

    fn swap_here(num: &Vec<i32>, x: usize, y: usize) {
        let temp = num[x];
        num[x] = num[y];
        num[y] = temp;
    }
}
struct Solution {

}

fn main() {

}