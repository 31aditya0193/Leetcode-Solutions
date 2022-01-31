class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var table : Set<Int> = []
        for ele in arr {
            if table.contains(ele) {
                return true
            }
            if ele % 2 == 0 {
                table.insert(ele/2)
            }
            table.insert(ele*2)
        }
        return false
    }
}