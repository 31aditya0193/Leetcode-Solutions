class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        var temp : [Int] = []
        for ele in nums {
            if ele != val {
                temp.append(ele)
                count += 1
            }
        }
        nums = temp
        return count
    }
}