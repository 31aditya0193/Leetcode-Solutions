class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        let expected = heights.sorted()
        var count = 0
        for idx in 0..<heights.count {
            if heights[idx] != expected[idx] {
                count += 1
            }
        }
        return count
    }
}