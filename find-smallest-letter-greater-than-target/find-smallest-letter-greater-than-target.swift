class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        let ch = letters.map {
            $0.asciiValue!
        }.filter {
            $0 > target.asciiValue!
        }.first
        if ch != nil {
            return Character(UnicodeScalar(ch!))
        } else {
            return letters.first!
        }
        return target
    }
}