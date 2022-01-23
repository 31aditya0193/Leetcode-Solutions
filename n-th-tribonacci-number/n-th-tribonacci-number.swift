class Solution {
    func tribonacci(_ n: Int) -> Int {
        var tribArray : [Int] = []
        tribArray.append(0)
        tribArray.append(1)
        tribArray.append(1)
        if n > 2 {
        for idx in 3...n+1 {
            let next = tribArray[idx - 1] + tribArray[idx - 2] + tribArray[idx - 3]
            tribArray.append(next)
        }
        }
        return tribArray[n]
    }
}