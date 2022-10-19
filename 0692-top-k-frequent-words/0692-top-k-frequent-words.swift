class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var result: [String] = []
        var table: [String:Int] = [:]
        for word in words {
            table[word, default: 0] += 1
        }
        var sortedTable = table.sorted(by: { $0.1 > $1.1 })
        sortedTable.sort {
            if $0.value != $1.value {
                return $0.value > $1.value
            } else {
                return $0.key < $1.key
            }
        }
        for i in 0..<k {
            result.append(sortedTable[i].key)
        }
        return result
    }
}