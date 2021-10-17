/**
 * Question Link: https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
 */

class Solution {
    func maxDepth(_ s: String) -> Int {
    var maxDepth = 0
    var depth = 0
    for ch in s {
        if ch == "(" {
            depth = depth + 1
        } else if ch == ")" {
            depth = depth - 1
        }
        if depth > maxDepth {
            maxDepth = depth
        }
    }
    return maxDepth
}
}
