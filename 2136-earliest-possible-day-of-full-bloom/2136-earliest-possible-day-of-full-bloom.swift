class Solution {
    func earliestFullBloom(_ plantTime: [Int], _ growTime: [Int]) -> Int {
        var zip: [(Int,Int)] = []
        for idx in 0..<plantTime.count {
            zip.append((growTime[idx], plantTime[idx]))
        }
        zip.sort {
            if $0.0 == $1.0 {
                return $0.1 < $1.1
            } else {
                return $0.0 < $1.0
            }
        }
        var result = 0
        for (g, p) in zip {
            result = max(result, g) + p
        }
        return result
    }
}