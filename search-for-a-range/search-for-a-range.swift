class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if let first = nums.firstIndex(of: target) {
            return [first, nums.lastIndex(of: target)!]
        } else {
            return [-1, -1]
        }
    }
}