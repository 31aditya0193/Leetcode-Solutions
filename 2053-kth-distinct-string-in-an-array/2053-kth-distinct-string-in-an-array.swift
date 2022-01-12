class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var table: [String: Int] = [:]
        var reg: [String] = []
        for str in arr {
            if table[str] == nil {
                reg.append(str)
                table[str] = 1
            } else {
                table[str]! += 1
            }
        }
        var itr = 0
        for idx in 0..<reg.count {
            if table[reg[idx]] == 1 {
                itr += 1
                if itr == k {
                    return reg[idx]
                }
            }
        }
        return ""
    }
}