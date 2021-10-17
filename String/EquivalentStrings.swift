/**
 * Question Link: https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
 * Primary idea: Append character to make string and compare strings in the end.
 */

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var str1 = "", str2 = ""
        for ch in word1 {
            str1 = str1 + ch
        }
        for ch in word2 {
            str2 = str2 + ch
        }
        return str1 == str2
    }
}
