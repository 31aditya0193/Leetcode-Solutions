class Solution {
    func minOperations(_ n: Int) -> Int {
        if n % 2 == 0 {
            return Int(n/2 * n/2)
        } else {
            let count = n/2
            return count * (count + 1)
        }
    }
}