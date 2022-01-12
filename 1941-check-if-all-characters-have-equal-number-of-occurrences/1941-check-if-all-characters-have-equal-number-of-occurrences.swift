class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var dict : [Character:Int] = [:]
        var tookFirst = true
        var count = 0
        for ch in s {
            if dict[ch] == nil {
                dict[ch] = 1
            } else {
                dict[ch]! += 1
            }
        }

        return Set(dict.values).count == 1
    }
}