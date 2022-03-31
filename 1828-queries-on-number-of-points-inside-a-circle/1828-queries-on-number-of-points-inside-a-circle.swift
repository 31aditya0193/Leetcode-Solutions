class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var result : [Int] = []
        for query in queries {
            var count = 0
            for point in points {
                let d = pow(pow(Double(point[0]-query[0]),2)+pow(Double(point[1]-query[1]),2),0.5)
                if d <= Double(query[2]) {
                    count += 1
                }
            }
            result.append(count)
        }
        return result
    }
}