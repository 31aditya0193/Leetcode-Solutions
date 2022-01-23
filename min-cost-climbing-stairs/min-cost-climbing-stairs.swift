class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let cnt = cost.count
        var table: [Int] = Array(repeating: 0, count: cnt)
        for idx in 0..<cnt {
            var num = 0
            if idx < 2 {
                table[idx] = cost[idx]
            } else {
                table[idx] = cost[idx] + min(table[idx-1], table[idx-2])
            }
        }
        return min(table[cnt-1], table[cnt-2])
    }
}