class Solution {
    var result = [String]()
    func restoreIpAddresses(_ s: String) -> [String] {
        result.removeAll()
        guard s.count >= 4 && s.count <= 12 else {
            return result
        }
        var list = [String]()
        dfs(ipList: &list, begin: 0, s: s)
        return result
    }
    
    func dfs(ipList: inout [String], begin: Int, s: String) {
        guard ipList.count <= 4 else {
            return
        }
        if (ipList.count == 4) {
            if (begin == s.count) {
                result.append(ipList.joined(separator: "."))
                return
            }
        }
        
        if shouldPruning(ipList: ipList, s: s) {
            return
        }
        let startIndex = s.index(s.startIndex, offsetBy: begin)
        for i in 1...3 {
            guard begin + i <= s.count else {
                break
            }
            let endIndex = s.index(s.startIndex, offsetBy: begin + i)
            let sub = s[startIndex..<endIndex]
            if isNumberValid(s: sub) {
                ipList.append(String(sub))
                if ipList.count == 4 && ipList[3] == "3" {
                    print("")
                }
                dfs(ipList: &ipList, begin: begin + i, s: s)
                _ = ipList.popLast()
            } else {
                continue
            }
        }
    }
    
    func shouldPruning(ipList: [String], s: String) -> Bool {
        let one = Float(s.count) / 3.0 - Float(ipList.count)
        let two = Float(4 - ipList.count)
        return one > two
    }

    func isNumberValid(s: Substring) -> Bool {
        if s.count > 1 && s.hasPrefix("0") || s.count > 3 {
            return false
        } else if let num = Int(s) {
            return (num >= 0 && num <= 255)
        }

        return false
    }
}
