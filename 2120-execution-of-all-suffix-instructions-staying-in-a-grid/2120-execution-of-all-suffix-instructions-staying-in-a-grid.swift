class Solution {
    func executeInstructions(_ n: Int, _ startPos: [Int], _ s: String) -> [Int] {
        var result: [Int] = []
        let boardMin = 0
        var rowPos = startPos[0]
        var colPos = startPos[1]
        for idx in 0..<s.count {
            let range = s[s.index(s.startIndex, offsetBy: idx)..<s.endIndex]
            var possibleSteps = 0
            rowPos = startPos[0]
            colPos = startPos[1]
            for ch in range {
                switch ch {
                case "L":
                    colPos -= 1
                case "R":
                    colPos += 1
                case "U":
                    rowPos -= 1
                case "D":
                    rowPos += 1
                default:
                    rowPos += 0 //pass statement
                }
                if colPos < 0 || rowPos < 0 || colPos >= n || rowPos >= n {
                    break
                } else {
                    possibleSteps += 1
                }
            }
            result.append(possibleSteps)
        }
        return result
    }
}