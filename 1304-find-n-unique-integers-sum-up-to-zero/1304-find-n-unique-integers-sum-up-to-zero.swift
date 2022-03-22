class Solution {
    func sumZero(_ n: Int) -> [Int] {
        var result : [Int] = []
        if n == 1 {
            return [0]
        }
        var len = n / 2
        if n % 2 != 0 {
            result.append(0)
        }
        for n in 1...len {
            result.append(n)
            result.append(-n)
        }
        return result
    }
}