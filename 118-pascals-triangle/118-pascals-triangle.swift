class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        for i in 0..<numRows {
            var row: [Int] = []
            for j in 0...i {
                if (j == 0 || j == i) {
                    row.append(1)
                } else {
                    let num = result[i-1][j] + result[i-1][j-1]
                    row.append(num)
                }
            }
            result.append(row)
        }
        return result
    }
}