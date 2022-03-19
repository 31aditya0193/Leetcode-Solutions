class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }
        var low = 0
        var high = nums.count - 1
        var mid : Int { low + (high - low) / 2 }
        while low > -1 && high <= nums.count {
            if low == high - 1 {
                return nums[high] > nums[low] ? high : low
            }
            if nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1] {
                return mid
            } else if nums[mid + 1] > nums[mid] {
                low = mid
            } else {
                high = mid
            }
        }
        return -1
    }
}