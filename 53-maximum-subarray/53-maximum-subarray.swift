class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = 0
        var maxSum = Int.min
        for idx in 0..<nums.count {
            sum += nums[idx]
            maxSum =  max(maxSum,sum)
            if(sum<0){
                sum = 0
            }
        }
        return maxSum
    }
}