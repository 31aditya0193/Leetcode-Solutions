class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let setA = Set(nums1)
        let setB = Set(nums2)
        return Array(setA.intersection(setB))
    }
}