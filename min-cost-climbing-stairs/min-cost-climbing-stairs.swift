class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var table: [Int] = []
        let cnt = cost.count
        for idx in 0..<cnt {
            var num = 0
            if idx < 2 {
                num = cost[idx]
            } else {
                num = cost[idx] + min(table[idx-1], table[idx-2])
            }
            table.append(num)
        }
        return min(table[cnt-1], table[cnt-2])
    }
}