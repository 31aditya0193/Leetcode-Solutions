class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
    var prod = 1
    var result = Array(repeating: 1, count: nums.count)
    
    for i in 0..<nums.count{
        result[i] = prod
        prod *= nums[i]
    }

    prod = 1
    for i in stride(from: nums.count - 1, to: -1, by: -1){
        result[i] *= prod
        prod *= nums[i]
    }
    return result
}
}