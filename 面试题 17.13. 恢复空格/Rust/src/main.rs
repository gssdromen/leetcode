struct Solution {}

use std::collections::HashMap;
static P: u64 = i32::max_value() as u64;
static BASE: u64 = 41;

impl Solution {
    pub fn respace(dictionary: Vec<String>, sentence: String) -> i32 {
        let sentenceList = sentence.as_bytes();

        let mut hashValues: HashMap<u64, bool> = HashMap::new();
        for word in dictionary {
            let hash = Solution::getHash(word);
            hashValues.insert(hash, true);
        }
        let mut f = vec![sentenceList.len() as i32; sentenceList.len()+1];
        f[0] = 0;
        for i in 1..=sentenceList.len() {
            f[i] = f[i-1] + 1;
            let mut hashValue: u64 = 0;
            for j in (1..=i).rev() {
                let temp = sentenceList[j-1] - ('a' as u8) + 1;
                hashValue = (hashValue * BASE + temp as u64) % P;
                if hashValues.contains_key(&hashValue) {
                    f[i] = std::cmp::min(f[i], f[j-1]);
                }
            }
        }
        return f[sentenceList.len()];
    }

    fn getHash(s: String) -> u64 {
        let mut hash: u64 = 0;
        let sList = s.as_bytes();
        
        for i in (0..=(s.len()-1)).rev() {
            let temp = sList[i] - ('a' as u8);
            hash = (hash * BASE + (temp as u64) + 1) % P;
        }
        return hash;
    }
}

fn main() {
    let dect = vec![String::from("looked"),String::from("just"),String::from("like"),String::from("her"),String::from("brother")];
    let sen = String::from("jesslookedjustliketimherbrother");

    let result = Solution::respace(dect, sen);

    println!("result::{}", result);
}
