class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var result: [String] = []
        var idx = 0
        for elem in 1...n {
            if elem == target[idx] {
                result.append("Push")
                idx += 1
            } else {
                result.append("Push")
                result.append("Pop")
            }
            if elem == target.last {
                break
            }
        }
        return result
    }
}