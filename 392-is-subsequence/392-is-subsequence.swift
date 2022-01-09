class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s == "" {
            return true
        }
        let letter = s.first!
        var tItr = 0
        for ch in t {
            tItr += 1
            if ch == letter {
                if s.count == 1 {
                    return true
                } else {
                    let sIndex = s.index(s.endIndex, offsetBy: -(s.count - 1))
                    let tIndex = t.index(t.endIndex, offsetBy: -(t.count - tItr))
                    return isSubsequence(String(s[sIndex...]), String(t[tIndex...]))
                }
            }
        }
        return false
    }
}