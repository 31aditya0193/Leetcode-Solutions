class Solution {
    func rob(_ nums: [Int]) -> Int {
        let cnt = nums.count
        var table : [Int] = []
        if cnt == 0 {
            return cnt
        }
        if cnt >= 1 {
            table.append(nums[0])
        }
        if cnt >= 2 {
            table.append(max(nums[0], nums[1]))
        }
        if cnt == 2 || cnt == 1 {
            return table[cnt-1]
        }
        for idx in 2..<cnt {
            table.append(max(nums[idx]+table[idx-2], table[idx-1]))
        }
        return table.last!
    }
}