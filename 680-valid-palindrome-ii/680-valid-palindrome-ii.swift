class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var start = s.startIndex
        var end = s.index(before: s.endIndex)
        
        while start < end {
            if s[start] != s[end] {
                let firstString = String(s[s.index(after: start)...end])
                let secondString = String(s[start...s.index(before: end)])
                
                if isPalindrome(firstString) || isPalindrome(secondString) {
                    return true
                } else {
                    return false
                }
            }
            start = s.index(after: start)
            end = s.index(before: end)
        }
        return true
    }

    func isPalindrome(_ s: String) -> Bool {
        var start = s.startIndex
        var end = s.index(before: s.endIndex)
        
        while start < end {
            if s[start] != s[end] {
                return false
            }
            
            start = s.index(after: start)
            end = s.index(before: end)
        }
        return true
    }
}