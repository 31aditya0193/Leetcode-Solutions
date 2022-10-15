class Solution {
    func findArray(_ pref: [Int]) -> [Int] {
        var result: [Int] = [pref.first!]
        for p in pref[1..<pref.count] {
            result.append(p ^ result.reduce(0, ^))
        }
        return result
    }
}