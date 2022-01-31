class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = arr
        var max = -1
        for idx in stride(from: arr.count - 1, to: -1, by: -1) {
            let temp = result[idx]
            result[idx] = max
            if temp > max {
                max = temp
            }
        }
        return result
    }
}