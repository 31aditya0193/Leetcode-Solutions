class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let cnt = nums.count
        let numsSet = Set(nums)
        var tempSet = Set(Array(1...cnt))
        tempSet.subtract(numsSet)
        return Array(tempSet)
    }
}