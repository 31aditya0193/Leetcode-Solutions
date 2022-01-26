class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        for v in edges[0] {
            if edges[1].contains(v) {
                return v
            }
        }
        return -1
    }
}