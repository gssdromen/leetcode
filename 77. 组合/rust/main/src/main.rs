struct Solution {}

impl Solution {
    pub fn combine(n: i32, k: i32) -> Vec<Vec<i32>> {
        let mut result: Vec<Vec<i32>> = vec![];
        let mut path: Vec<i32> = vec![];

        Self::backtracking(&mut result, &mut path, n, k, 1);

        result
    }

    fn backtracking(
        result: &mut Vec<Vec<i32>>, 
        path: &mut Vec<i32>, 
        n: i32, 
        k: i32,
        start_index: i32
    ) {
        if path.len() == k as usize {
            result.push(path.to_vec());
            return
        }
        for i in start_index ..= n {
            path.push(i);
            Self::backtracking(result, path, n, k, i + 1);
            path.pop();
        }
    }
}

fn main() {
    let s = Solution{};
    println!("{:?}", Solution::combine(4, 2));
}
