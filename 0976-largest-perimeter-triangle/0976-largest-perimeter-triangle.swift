class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        for idx in stride(from: sorted.count-1, through: 2, by: -1) {
            if sorted[idx] < sorted[idx - 1] + sorted[idx - 2] {
                return sorted[idx] + sorted[idx - 1] + sorted[idx - 2]
            }
        }
        return 0
    }
}