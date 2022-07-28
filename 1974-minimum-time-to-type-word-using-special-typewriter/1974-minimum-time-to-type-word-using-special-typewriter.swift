class Solution {
    func minTimeToType(_ inp: String) -> Int {
        let word = "a" + inp
        var seconds = word.count - 1
        for idx in 1..<word.count {
            let currentCh = word[word.index(word.startIndex, offsetBy: idx)]
            let prevCh = word[word.index(word.startIndex, offsetBy: idx-1)]
            let currentChAscii = Int(currentCh.asciiValue!)
            let prevChAscii = Int(prevCh.asciiValue!)
            let d1 = max(currentChAscii,prevChAscii) - min(currentChAscii, prevChAscii)
            let d2 = 26 - (max(currentChAscii,prevChAscii) - min(currentChAscii, prevChAscii))
            seconds += min(d1, d2)
        }
        return seconds
    }
}