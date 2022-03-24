class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var singleNumber = 0
       for num in nums {
           singleNumber ^= num
       }
       return singleNumber
    }
}