class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var s = Set<Int>()
        for num in nums {
            if s.contains(num) {
                s.remove(num)
            } else {
                s.insert(num)
            }
        }
        return s.first!
    }
}