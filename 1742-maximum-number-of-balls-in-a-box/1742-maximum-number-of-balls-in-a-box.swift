class Solution {
    func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
        var dict: [Int: Int] = [:]
        for num in lowLimit...highLimit {
            var t = num
            var sum = 0
            while t > 0 {
                sum += t % 10
                t /= 10
            }
            if dict[sum] == nil {
                dict[sum] = 1
            } else {
                dict[sum]! += 1
            }
        }
        return dict.values.max()!
    }
}