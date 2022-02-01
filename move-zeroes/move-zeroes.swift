class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var ptr = 0
        var count = 0
        for idx in 0..<nums.count {
            if nums[idx] == 0 {
                count += 1
            } else {
                nums[ptr] = nums[idx]
                ptr += 1
            }
        }
        if count != 0 {
            for _ in 1...count {
                nums[ptr] = 0
                ptr += 1
            }
        }
    }
}