class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var result : [[Int]] = []
        var table : [Int: [Int]] = [:]
        for idx in 0..<groupSizes.count {
            if table[groupSizes[idx]] != nil {
                table[groupSizes[idx]]!.append(idx)
            } else {
                table[groupSizes[idx]] = [idx]
            }
            if table[groupSizes[idx]]!.count == groupSizes[idx] {
                result.append(table[groupSizes[idx]]!)
                table[groupSizes[idx]] = nil
            }
        }
        return result
    }
}