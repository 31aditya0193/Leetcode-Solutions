class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        for n in 1...num {
            if n*n == num {
                return true
            } else if n*n > num {
                return false
            }
        }
        return true
    }
}