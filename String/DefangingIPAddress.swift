/**
 * Question Link: https://leetcode.com/problems/defanging-an-ip-address/
 * Primary idea: Basic String replacing.
 */

class Solution {
    func defangIPaddr(_ address: String) -> String {
        var result: String = ""
        for ch in address {
            if ch == "." {
                result = result + "[.]"
            } else {
                result = result + "\(ch)"
            }
        }
        return result
    }
}
