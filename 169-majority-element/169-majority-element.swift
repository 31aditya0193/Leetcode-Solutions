class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var major = nums.first!
        var cnt = 0
        
        for num in nums {
            if num == major {
                cnt += 1
            } else if (cnt == 1) {
                major = num
            } else {
                cnt -= 1
            }
        }
        return major
    }
}