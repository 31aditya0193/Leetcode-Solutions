class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var counter: [Int] = Array(repeating: 0, count: 26)
        var idx = 0
        for char in s.reversed() {
            let asc = Int(char.asciiValue!)
            counter[asc - 97] += 1
        }
        
        for char in s {
            let asc = Int(char.asciiValue!)
            if counter[asc - 97] == 1 {
                return idx
            }
            idx += 1
        }
        return -1
    }
}