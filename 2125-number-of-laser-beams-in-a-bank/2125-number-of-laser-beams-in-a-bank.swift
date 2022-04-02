class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var filtered : [Int] = []
        for s in bank {
            var cnt = 0
            for ch in s {
                if ch == "1" {
                    cnt += 1
                }
            }
            if cnt > 0 {
                filtered.append(cnt)
            }
        }
        if filtered.count < 2 {
            return 0
        }
        var result = 0
        for idx in 1..<filtered.count {
            result += filtered[idx] * filtered[idx-1]
        }
        return result
    }
}