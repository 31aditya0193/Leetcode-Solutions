class Solution {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var maxesInRows : [Int] = []
        let len = grid.count
        var maxesInCols : [Int] = Array(repeating: 0, count: len)
        var increase : Int = 0
        for row in grid {
            maxesInRows.append(row.max()!)
            for idx in 0..<len {
                if row[idx] > maxesInCols[idx] {
                    maxesInCols[idx] = row[idx]
                }
            }
        }
        for r in 0..<len {
            for c in 0..<len {
                let towerMax = min(maxesInRows[r], maxesInCols[c])
                if grid[r][c] < towerMax {
                    increase += (towerMax - grid[r][c])
                }
            }
        }
        return increase
    }
}