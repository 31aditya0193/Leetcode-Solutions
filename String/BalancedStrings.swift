/**
 * Question Link: https://leetcode.com/problems/split-a-string-in-balanced-strings/
 * Primary idea: since array contains only 2 type of letters, count streak of first type and split the string when same number of second type letters are accumulated.
 */

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var rCount = 0, lCount = 0
        var result = 0
        for ch in s {
            if ch == "L" {
                lCount = lCount + 1
            } else {
                rCount = rCount + 1
            }
            if rCount == lCount {
                result = result + 1
                lCount = 0
                rCount = 0
            }
        }
        return result
    }
}
