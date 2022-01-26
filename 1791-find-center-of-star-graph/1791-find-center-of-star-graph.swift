class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        for v in edges[1] {
            if edges[0].contains(v) {
                return v
            }
        }
        return -1
    }
}