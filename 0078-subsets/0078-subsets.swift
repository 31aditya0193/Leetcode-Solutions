class Solution {
    var result: [[Int]] = []
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subSet: [Int] = []
        makesubset(idx: 0, in: &subSet, from: nums)
        return result
    }

    func makesubset(idx: Int, in sset: inout [Int], from arr: [Int]) {
        if idx == arr.count {
            result.append(sset)
            return
        }
        sset.append(arr[idx])
        makesubset(idx: idx + 1, in: &sset, from: arr)
        _ = sset.removeLast()
        makesubset(idx: idx + 1, in: &sset, from: arr)
    }
}