class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        Array(Set(Range(1...nums.count)).symmetricDifference(Set(nums)))
    }
}