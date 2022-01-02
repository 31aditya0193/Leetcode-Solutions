class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var result = 0
        let kTicket = tickets[k]
        for idx in 0..<tickets.count {
            if idx > k {
                if tickets[idx] >= kTicket {
                    result += kTicket - 1
                } else {
                    result += tickets[idx]
                }
            } else {
                if tickets[idx] >= kTicket {
                    result += kTicket
                } else {
                    result += tickets[idx]
                }
            }
        }
        return result
    }
}