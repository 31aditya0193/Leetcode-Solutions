class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        var temp = arr
        temp.sort {
            abs($0 - x) < abs($1 - x) || abs($0 - x) == abs($1 - x) && $0 < $1
        }
        return temp[0..<k].sorted()
    }
}