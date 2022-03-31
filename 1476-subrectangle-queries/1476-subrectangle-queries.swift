
class SubrectangleQueries {
    var ar : [[Int]]
    init(_ rectangle: [[Int]]) {
        self.ar = rectangle
    }
    
    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for r in row1...row2 {
            for c in col1...col2 {
                ar[r][c] = newValue
            }
        }
    }
    
    func getValue(_ row: Int, _ col: Int) -> Int {
        return ar[row][col]
    }
}

/**
 * Your SubrectangleQueries object will be instantiated and called as such:
 * let obj = SubrectangleQueries(rectangle)
 * obj.updateSubrectangle(row1, col1, row2, col2, newValue)
 * let ret_2: Int = obj.getValue(row, col)
 */