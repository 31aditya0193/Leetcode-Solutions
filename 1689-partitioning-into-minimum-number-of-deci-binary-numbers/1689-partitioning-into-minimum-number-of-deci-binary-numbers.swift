class Solution {
    func minPartitions(_ n: String) -> Int {
        var result = 0
        for ch in n {
            if let i = Int(String(ch)), i > result {
                result = i
            }
        }
        return result
    }
}