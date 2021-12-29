class Solution {
    func removeDuplicates(_ strng: String) -> String {
        var result: [Character] = []        //An Array for easy Stack Operations
        
        for ch in strng {
            if let lastCh = result.popLast() {  //Get last character processed
                if lastCh == ch {
                    continue                    //continue the loop with characters are same
                } else {
                    result.append(lastCh)       // append both characters back if not
                    result.append(ch)
                }
            } else {
                result.append(ch)               //append current character if stack is empty
            }
        }
        return String(result)
    }
}