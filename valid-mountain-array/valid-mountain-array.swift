class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        var left = 0
        var right = arr.count - 1
        
        while left < right && arr[left] < arr[left + 1] {
            left += 1
        }
        while left < right && arr[right] < arr[right - 1] {
            right -= 1
        }
        return left == right && left != 0 && right != arr.count - 1
    }
}