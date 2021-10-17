/**
 * Question Link: https://leetcode.com/problems/shuffle-string/
 * Primary idea: take a dummy string, find new index from array and move character to that index.
 */

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result: [Character] = [Character](repeating: "a", count: s.count)
        var ctr = 0
        for x in indices {
            let index = s.index(s.startIndex, offsetBy: ctr)
            result[x] = s[index]
            ctr = ctr + 1
        }
        return String(result)
    }
}
