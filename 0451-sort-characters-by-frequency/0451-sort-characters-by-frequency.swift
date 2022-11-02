class Solution {
    func frequencySort(_ s: String) -> String {
        var dictTable: [Character: Int] = [:]
        for ch in s {
            dictTable[ch,default: 0] += 1
        }
        let sortedDict = dictTable.sorted {
            $0.value > $1.value
        }
        var result = ""
        for (key, value) in sortedDict {
            for _ in 1...value {
                result += "\(key)"
            }
        }
        return result
    }
}