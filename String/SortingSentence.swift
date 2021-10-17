/**
 * Question Link: https://leetcode.com/problems/sorting-the-sentence/
 * Primary idea: Split string and use last character to save its position.
 */

class Solution {
    func sortSentence(_ s: String) -> String {
        var result = ""
        var word = ""
        var wordDict: [Int: String] = [:]
        for ch in s {
            if ch == " " {
                continue
            }
            if let pos = ch.wholeNumberValue {
                wordDict[pos] = word
                word = ""
            } else {
                word = word + String(ch)
            }
        }
        for idx in 1...wordDict.count {
            if idx != wordDict.count {
                result = result + wordDict[idx]! + " "
            } else {
                result = result + wordDict[idx]!
            }
        }
        return result
    }
}
