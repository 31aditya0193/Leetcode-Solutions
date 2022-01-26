class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let table = edges[1]
        for v in edges[0] {
            if table.contains(v) {
                return v
            }
        }
        return -1
    }
}