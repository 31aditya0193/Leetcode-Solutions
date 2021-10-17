/**
 * Question Link: https://leetcode.com/problems/goal-parser-interpretation/
 * Primary idea: use greedy approach to match with tokens.
 */

class Solution {
    func interpret(_ command: String) -> String {
        var result: String = ""
        for i in 0..<command.count {
            let idx = command.index(command.startIndex, offsetBy: i)
            var ch = command[idx]
            switch ch {
            case "G":
                result = result + "G"
            case "(":
                let next = command.index(idx, offsetBy: 1)
                var ch = command[next]
                if ch == ")" {
                    result = result + "o"
                } else {
                    result = result + "al"
                }
            default:
                result = result + ""
            }
        }
        return result
    }
}
