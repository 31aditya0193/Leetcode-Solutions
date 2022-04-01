class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        var result : [Int] = Array(repeating: 0, count: boxes.count)
        var i = 0
        for box in boxes {
            if box == "1" {
                for idx in 0..<result.count {
                    result[idx] += abs(idx - i)
                }
            }
            i += 1
        }
        return result
    }
}