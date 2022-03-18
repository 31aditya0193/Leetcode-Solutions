class Solution {
    func mySqrt(_ x: Int) -> Int {
        var idx = 0
        while idx * idx <= x {
            if (idx+1) * (idx+1) <= x {
                idx += 1
            } else {
                break
            }
        }
        return idx
    }
}