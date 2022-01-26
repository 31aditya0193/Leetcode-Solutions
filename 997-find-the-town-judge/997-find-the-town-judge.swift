class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        var arr = [Int](repeating: 0, count: N+1)
        let target = N-1
        var result = [Int]()
        for one in trust{
           if arr[one[0]] >= 0 {arr[one[0]] = -1}
           let a = one[1]
           arr[a] += 1
        }
        for i in 1 ... N {
            if arr[i] == target {return i}
        }
        return -1
        
    }
}