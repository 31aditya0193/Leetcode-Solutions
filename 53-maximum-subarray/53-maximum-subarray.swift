class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = 0
        var maxSum = Int.min
        for num in nums {
            sum += num
            maxSum =  max(maxSum,sum)
            if(sum<0){
                sum = 0
            }
        }
        return maxSum
    }
}