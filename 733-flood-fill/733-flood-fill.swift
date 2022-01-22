class Solution {
    var rows: Int
    var columns: Int
    init() {
        rows = 0
        columns = 0
    }
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var result = image
        rows = image.count
        columns = image[0].count
        let targetColor = image[sr][sc]
        fillColor(&result, sr, sc, targetColor, newColor)
        return result
    }
    
    func fillColor(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ targetColor : Int, _ newColor: Int){
        if sr < 0 || sr >= rows || sc < 0 || sc >= columns || image[sr][sc] != targetColor || image[sr][sc] == newColor {
            return
        }
        if image[sr][sc] == targetColor {
            image[sr][sc] = newColor
        }
        fillColor(&image, sr + 1, sc, targetColor, newColor)
        fillColor(&image, sr, sc + 1, targetColor, newColor)
        fillColor(&image, sr - 1, sc, targetColor, newColor)
        fillColor(&image, sr, sc - 1, targetColor, newColor)
    }
}