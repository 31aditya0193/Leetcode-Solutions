class Solution {
    var hash: [Bool] = []
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        makeHash(from: allowed)
        for word in words {
            if validateWord(word) {
                count += 1
            }
        }
        return count
    }
    
    func makeHash(from allowed: String) {
        hash = Array(repeating: false, count: 26)
        for letter in allowed {
            hash[Int(letter.asciiValue! - 97)] = true
        }
    }
    
    func validateWord(_ word: String) -> Bool {
        for letter in word {
            if !hash[Int(letter.asciiValue! - 97)] {
                return false
            }
        }
        return true
    }
}