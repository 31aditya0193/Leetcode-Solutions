/**
 * Question Link: https://leetcode.com/problems/jewels-and-stones/
 * Primary idea: check for jewels in stones using String.contains()
 */

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result: Int = 0
        for stone in stones {
            if jewels.contains(stone) {
                result = result + 1
            }
        }
        return result
    }
}
