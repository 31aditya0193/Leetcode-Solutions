class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let len = nums.count
        let sortedArray = nums.sorted()
        return (sortedArray[len - 1] - 1) * (sortedArray[len - 2] - 1)
    }
}