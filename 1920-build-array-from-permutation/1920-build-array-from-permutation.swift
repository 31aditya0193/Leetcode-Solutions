class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        nums.map { nums[$0] }
    }
}