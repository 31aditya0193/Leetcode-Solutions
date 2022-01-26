class Solution {
    func findJudge(_ n: Int, _ trusts: [[Int]]) -> Int {
        var trusted = Array(repeating: 0, count: n)
        for trust in trusts {
            trusted[trust[0]-1] -= 1
            trusted[trust[1]-1] += 1
        }
        for idx in 0..<trusted.count {
            if trusted[idx] == n - 1 {
                return idx + 1
            }
        }
        return -1
    }
}
