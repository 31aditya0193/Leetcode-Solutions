class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var width = 0
        var filtered = points.map { $0[0] }
        filtered.sort()
        if filtered.count < 2 {
            return width
        }
        for idx in 1..<filtered.count {
            if width < filtered[idx] - filtered[idx-1] {
                width = filtered[idx] - filtered[idx-1]
            }
        }
        return width
    }
}