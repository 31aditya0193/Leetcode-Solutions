class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result: [Int] = []
        for idx in 0...n {
            if idx <= 1 {
                result.append(idx)
            } else {
                if idx % 2 == 0 {
                    result.append(result[idx/2])
                } else {
                    result.append(result[idx/2] + 1)
                }
            }
        }
        return result
    }
}