/**
 * Question Link: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
 * Primary idea: sort the array and use index to find the greater numbers.
 */

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let tempArray = nums.sorted()
        var result: [Int] = []
        for num in nums {
            let idx = tempArray.firstIndex(of: num)!
            result.append(idx)
        }
        return result
    }
}
