class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var result : [[Int]] = []
        var table : [Int: [Int]] = [:]
        for idx in 0..<groupSizes.count {
            let p = groupSizes[idx]
            if table[p] != nil {
                table[p]!.append(idx)
            } else {
                table[p] = [idx]
            }
            if table[p]!.count == p {
                result.append(table[p]!)
                table[p] = nil
            }
        }
        return result
    }
}