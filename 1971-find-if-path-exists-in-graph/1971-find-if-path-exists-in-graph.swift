class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ start: Int, _ end: Int) -> Bool {
        var paths: Set = [start]
        var prevCount = 0

        while prevCount != paths.count {
            prevCount = paths.count
            edges.forEach {
                if !paths.isDisjoint(with: $0) {
                    paths = paths.union($0)
                }
            }
            if paths.contains(end) {
                return true
            }
            
        }

        return false
    }
}