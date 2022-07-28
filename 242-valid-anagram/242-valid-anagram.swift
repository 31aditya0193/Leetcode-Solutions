class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var table : [Character: Int] = [:]
        for ch in s {
            if let c = table[ch] {
                table[ch] = c + 1
            } else {
                table[ch] = 1
            }
        }
        for ch in t {
            if let c = table[ch] {
                table[ch] = c - 1
            } else {
                return false
            }
        }
        for (_,v) in table {
            if v != 0 {
                return false
            }
        }
        return true
    }
}