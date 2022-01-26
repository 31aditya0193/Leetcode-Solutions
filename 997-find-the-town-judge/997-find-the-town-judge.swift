class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        var arr = [Int](repeating: 0, count: N+1)
        let target = N-1
        var result = [Int]()
        for one in trust{
           arr[one[0]] = -1
           arr[one[1]] += 1
        }
        for i in 1 ... N {
            if arr[i] == target {return i}
        }
        return -1
        
    }
}