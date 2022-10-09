class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let sumToN = (n * (n + 1)) / 2
        let numSum = nums.reduce(0, +)
        return sumToN - numSum
    }
}