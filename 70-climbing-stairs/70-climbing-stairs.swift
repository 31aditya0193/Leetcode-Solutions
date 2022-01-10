class Solution {
    var stArray: [Int] = []
    func climbStairs(_ n: Int) -> Int {
        for idx in 0...n {
            if idx <= 2 {
                stArray.append(idx)
            } else {
                let next = stArray[idx - 1] + stArray[idx - 2]
                stArray.append(next)
            }
            
        }
        return stArray[n]
    }
}