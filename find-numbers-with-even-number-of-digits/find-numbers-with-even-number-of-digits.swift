class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            switch num {
            case 10...99, 1000...9999, 100000:
                result += 1
            default:
                result += 0
            }
        }
        return result
    }
}