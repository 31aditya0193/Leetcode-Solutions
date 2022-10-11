class Solution {
    func sortColors(_ nums: inout [Int]) {
        var idx = 0
        var zPtr = 0
        var tPtr = nums.count - 1
        while idx <= tPtr {
            if nums[idx] == 0 {
                nums.swapAt(zPtr, idx)
                zPtr += 1
            } else if nums[idx] == 2 {
                nums.swapAt(idx, tPtr)
                idx -= 1
                tPtr -= 1
            }
            idx += 1
        }
    }
}