class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var result = 0
        var dict: [Int:Bool] = [:]
        for num in nums {
            if dict[num] == nil {
                result += num
                dict[num] = true
            } else if dict[num] == true {
                result -= num
                dict[num] = false
            }
        }
        return result
    }
}