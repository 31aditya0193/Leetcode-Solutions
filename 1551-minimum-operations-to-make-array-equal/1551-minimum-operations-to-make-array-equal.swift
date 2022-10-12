class Solution {
    func minOperations(_ n: Int) -> Int {
        let count = Int(n/2)
        if n % 2 == 0 {
            return count * count
        } else {
            let count = n/2
            return count * (count + 1)
        }
    }
}