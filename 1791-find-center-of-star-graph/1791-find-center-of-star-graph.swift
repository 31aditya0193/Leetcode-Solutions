class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let table = edges[1]
        let check = edges[0]
        for v in check {
            if table.contains(v) {
                return v
            }
        }
        return -1
    }
}