class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var dict: [Int: Bool] = [:]
        for num in nums {
            if dict[num] == true {
                return num
            } else {
                dict[num] = true
            }
        }
        return 0
    }
}