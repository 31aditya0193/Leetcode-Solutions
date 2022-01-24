class Solution {
    func maximumScore(_ nums: [Int], _ multipliers: [Int]) -> Int {
        let n = nums.count
        let m = multipliers.count
        var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: m + 1)
        for i in stride(from: m - 1,to: -1,by: -1) {
            for left in stride(from: i,to:  -1,by: -1) {
                let mult = multipliers[i]
                let right = n - 1 - (i - left)
                dp[i][left] = max(mult * nums[left] + dp[i + 1][left + 1],
                                  mult * nums[right] + dp[i + 1][left])
            }
        }
        return dp[0][0]
    }
}