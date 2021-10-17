/**
 * Question Link: https://leetcode.com/problems/number-of-good-pairs/
 * Primary idea: Use PnC for number.
 */

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var result : Int = 0
        var counts: [Int: Int] = [:]
        for item in nums {
            counts[item] = (counts[item] ?? 0) + 1
        }
        for (_, value) in counts {
            let n = value - 1
            result = result + n * ( n + 1 ) / 2
        }
        return result
    }
}
