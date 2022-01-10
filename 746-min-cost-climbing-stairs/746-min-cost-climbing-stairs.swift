class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let len = cost.count
        var dp: [Int] = []
        for idx in 0..<len {
            var num = 0
            if (idx < 2) {
                num = cost[idx]
            } else {
                num = cost[idx] + min(dp[idx - 1], dp[idx - 2])
            }
            dp.append(num)
        }
        return min(dp[len-1], dp[len-2]);
    }
}