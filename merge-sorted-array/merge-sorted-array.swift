class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        if m == 0 {
            nums1 = nums2
            return
        }
        for _ in 0..<n {
            nums1.removeLast()
        }
        nums1 += nums2
        nums1.sort()
    }
}