class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        for idx in stride(from: arr.count-2, to: -1, by: -1) {
            if arr[idx] == 0 {
                arr.insert(0, at: idx + 1)
                arr.removeLast()
            }
        }
    }
}