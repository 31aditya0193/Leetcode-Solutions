class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var result = [first]
        for ele in encoded {
            result.append(ele^result.last!)
        }
        return result
    }
}