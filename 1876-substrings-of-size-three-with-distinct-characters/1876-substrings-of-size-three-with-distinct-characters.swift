class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        if s.count < 3 {
            return 0
        }
        var goodCount = 0
        for idx in 0..<s.count-2 {
            let subString = String(s[s.index(s.startIndex, offsetBy: idx)...s.index(s.startIndex, offsetBy: idx+2)])
            let charSet = Set(subString)
            goodCount += (charSet.count == subString.count) ? 1 : 0
        }
        return goodCount
    }
}