class Solution {
    func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
        guard m * n == original.count else {
            return []
        }
        var result: [[Int]] = []
        var start = 0
        var finish = n - 1
        for _ in 0..<m {
            result.append(Array(original[start...finish]))
            start += n
            finish += n
        }
        return result
    }
}