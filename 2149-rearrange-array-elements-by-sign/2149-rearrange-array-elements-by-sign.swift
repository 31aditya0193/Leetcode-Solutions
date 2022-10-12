class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        let positives = nums.filter { num in
            num > 0
        }
        let negatives = nums.filter { num in
            num < 0
        }
        var result: [Int] = []
        for idx in 0..<positives.count {
            result.append(positives[idx])
            result.append(negatives[idx])
        }
        return result
    }
}