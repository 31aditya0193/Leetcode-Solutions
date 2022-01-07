class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        var map: [Int] = []
        if n == 0 || n == 1 {
            return n
        }
        var resultMax = 0
        map.append(0)
        map.append(1)
        
        for idx in 2...n {
            var number = 0
            if idx % 2 == 0 {
                number = map[idx/2]
            } else {
                number = map[idx/2] + map[idx/2 + 1]
            }
            if number > resultMax {
                resultMax = number
            }
            map.append(number)
        }
        
        return resultMax
    }
}