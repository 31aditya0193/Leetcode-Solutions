class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 2 || n == 1 {
            return n
        }
        var ar = [1, 2]
        for idx in 2..<n {
            ar.append(ar[idx-1] + ar[idx-2])
        }
        return ar[n-1]
    }
}