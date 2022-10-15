class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        var cipher: [Character:Character] = [:]
        var current = 97
        for ch in key {
            if cipher[ch] == nil && ch.isLowercase {
                cipher[ch] = Character(UnicodeScalar(current)!)
                current += 1
            }
            if cipher.count == 26 {
                break
            }
        }
        var result = ""
        for ch in message {
            if ch.isLowercase {
                result += String(cipher[ch]!)
            } else {
                result += String(ch)
            }
        }
        return result
    }
}