class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var temp = nums
        guard Set(temp).count > 1 else {
            if nums.first! == 0 {
                return 0
            }
            return 1
        }
        var result = 0
        while Set(temp).count != 1 {
            result += 1
            temp = temp.filter({ $0 != 0 })
            let min = temp.min()!
            temp = temp.map({ $0 - min })
        }
        return result
    }
}