class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        let counts = sentences.map { sentence in
            sentence.split(separator: " ").count
        }
        return counts.max()!
    }
}