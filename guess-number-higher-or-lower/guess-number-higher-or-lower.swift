/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low = 1
        var high = n + 1
        var mid : Int { low + (high - low) / 2 }
        var check = guess(mid)
        while check != 0 {
            if check == -1 {
                high = mid
            } else if check == 1 {
                low = mid
            }
            check = guess(mid)
        }
        return mid
    }
}