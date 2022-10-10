class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var setNums = Set<Int>()
        for num in nums {
            if setNums.contains(num) {
                return num
            } else {
                setNums.insert(num)
            }
        }
        return 0
    }
}