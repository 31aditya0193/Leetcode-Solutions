class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        var mid = 0
        while left < right {
            mid = (left + right) / 2
            if arr[mid] > arr[mid - 1] && arr[mid] > arr[mid + 1] {
                return mid
            } else if arr[mid] > arr[mid - 1] && arr[mid] < arr[mid + 1] {
                left = mid
            } else {
                right = mid
            }
        }
        return 0
    }
}