class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxOne = 0
        var currMax = 0
        for num in nums {
            if num == 0 {
                currMax = 0
            } else {
                currMax += 1
                if currMax > maxOne {
                    maxOne = currMax
                }
            }
        }
        return maxOne
    }
}