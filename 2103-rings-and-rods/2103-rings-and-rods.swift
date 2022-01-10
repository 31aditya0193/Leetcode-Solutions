class Solution {
    func countPoints(_ rings: String) -> Int {
        var result: [Int] = Array(repeating: 0, count: 10)
        let rng = rings.count / 2
        for idx in 0..<rng {
            let color = rings[rings.index(rings.startIndex, offsetBy: 2*idx + 0)]
            let rod = rings[rings.index(rings.startIndex, offsetBy: 2*idx + 1)]
            var mul = 0
            if color == "R" {
                mul = 1
            } else if color == "G" {
                mul = 2
            } else {
                mul = 4
            }
            result[rod.wholeNumberValue!] |= mul
        }
        return result.filter{ $0 == 7 }.count
    }
}