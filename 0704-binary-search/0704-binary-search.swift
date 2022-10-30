class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if left == right - 1 {
                return -1
            }
            if nums[mid] > target {
                right = mid
            } else {
                left = mid
            }
        }
        return -1
    }
}