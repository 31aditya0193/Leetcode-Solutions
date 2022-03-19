class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var temp1 = nums1, temp2 = nums2
        var result : [Int] = []
        var itr1 = 0, itr2 = 0
        while itr1 < nums1.count, itr2 < nums2.count {
            if let found = temp2.firstIndex(of: temp1[itr1]) {
                result.append(temp1[itr1])
                temp2.remove(at: found)
            }
            itr1 += 1
        }
        return result
    }
}