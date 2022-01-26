class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let first = Set(edges[0])
        let second = Set(edges[1])
        return first.intersection(second).first!
    }
}