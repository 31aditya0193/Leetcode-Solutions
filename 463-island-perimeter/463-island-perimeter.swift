class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var islands = 0, neighbours = 0;
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    islands += 1
                    if (i < grid.count - 1 && grid[i + 1][j] == 1) { neighbours += 1 }
                    if (j < grid[i].count - 1 && grid[i][j + 1] == 1) { neighbours += 1 }
                }
            }
        }
        
        return islands * 4 - neighbours * 2
    }
}