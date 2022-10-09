class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var arS: [Character] = []
        var arT: [Character] = []
        for ch in s {
            if ch == "#" {
                arS.popLast()
            } else {
                arS.append(ch)
            }
        }
        for ch in t {
            if ch == "#" {
                arT.popLast()
            } else {
                arT.append(ch)
            }
        }
        return arS == arT
    }
}