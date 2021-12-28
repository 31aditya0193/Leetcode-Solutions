class Solution {
    func removeOuterParentheses(_ input: String) -> String {
    var result = ""
    var depth = 0
    var tempStr = ""
    for ch in input {
        tempStr += "\(ch)"
        if ch == "(" {
            depth += 1
        } else {
            depth -= 1
        }
        if depth == 0 {
            tempStr.removeFirst()
            tempStr.removeLast()
            result += tempStr
            tempStr = ""
        }
    }
    return result
}
}