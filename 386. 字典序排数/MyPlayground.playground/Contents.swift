class Solution {
    var result = [Int]()
    
    func lexicalOrder(_ n: Int) -> [Int] {
        result.removeAll()
        
        for i in 1 ... 9 {
            dfs(base: i, n: n)
        }
        return result
    }
    
    func dfs(base: Int, n: Int) {
        guard base <= n else {
            return
        }
        result.append(base)
        for i in 0 ... 9 {
            if base * 10 + i <= n  {
                dfs(base: base * 10 + i, n: n)
            } else {
                return
            }
        }
    }
}

let s = Solution()
let result = s.lexicalOrder(13)
print(result)
