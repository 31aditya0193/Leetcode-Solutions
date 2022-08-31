class Solution {
    func check(_ nums: [Int]) -> Bool {
        var k = 0
        let len = nums.count
        for idx in 0..<len {
            if (nums[idx] > nums[(idx + 1) % len]) {
                k += 1
            }
        }
        return k > 1 ? false : true
    }
}