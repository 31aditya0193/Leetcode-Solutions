class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var idx = nums.count - 1
         while idx > 0 {
            if nums[idx] == nums[idx-1] {
                nums.remove(at: idx)
            }
            idx -= 1
        }
        return nums.count
    }
}