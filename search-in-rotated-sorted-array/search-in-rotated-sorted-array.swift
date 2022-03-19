class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) {
            return index
        } else {
            return -1
        }
    }
}