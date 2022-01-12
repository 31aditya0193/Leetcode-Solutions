class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var dict: [Int: Int] = [:]
        let len = target.count
        for idx in 0..<len {
            if dict[target[idx]] == nil {
                dict[target[idx]] = 1
            } else {
                dict[target[idx]]! += 1
            }
            if dict[arr[idx]] == nil {
                dict[arr[idx]] = -1
            } else {
                dict[arr[idx]]! -= 1
            }
        }
        return Set(dict.values).count == 1
    }
}