/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        if isBadVersion(1) {
            return 1
        }
        var low = 1
        var high = n + 1
        var mid : Int { low + (high - low) / 2 }
        var check = isBadVersion(mid)
        while check == isBadVersion(mid-1) {
            if check {
                high = mid
            } else {
                low = mid
            }
            check = isBadVersion(mid)
        }
        return mid
    }
}