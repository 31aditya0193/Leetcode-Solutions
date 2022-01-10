class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var allLetters = Set<Character>()
        for letter in sentence {
            allLetters.insert(letter)
            if allLetters.count == 26 {
                return true
            }
        }
        return false
    }
}