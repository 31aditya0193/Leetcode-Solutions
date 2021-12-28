class Solution {
    func reverseString(_ s: inout [Character]) {
        let mid = s.count / 2
        for idx in 0..<mid {
            let temp = s[idx]
            s[idx] = s[s.count-1-idx]
            s[s.count-1-idx] = temp
        }
    }
}