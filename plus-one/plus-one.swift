class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.count == 1 {
            let d = digits.first!
            if d == 9 {
                return [1,0]
            }
            return [d+1]
        } else {
            let rem = Array(digits[1...])
            let residualSum = plusOne(rem)
            if rem.count != residualSum.count {
                if digits[0] == 9 {
                    return [1,0] + Array(residualSum[1...])
                } else {
                    return [digits[0]+1] + Array(residualSum[1...])
                }
            } else {
                return [digits[0]] + residualSum
            }
        }
    }
}