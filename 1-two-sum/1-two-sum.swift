class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var table: [Int: Int] = [:]
        for idx in 0..<nums.count {
            if let first = table[nums[idx]] {
                return [first, idx]
            } else {
                table[target-nums[idx]] = idx
            }
        }
        return []
    }
}