class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var result = 0
        var checkingIndex: Int
        switch ruleKey {
        case "type":
            checkingIndex = 0
        case "color":
            checkingIndex = 1
        case "name":
            checkingIndex = 2
        default:
            checkingIndex = 0
        }
        for item in items {
            if item[checkingIndex] == ruleValue {
                result = result + 1
            }
        }
        return result
    }
}