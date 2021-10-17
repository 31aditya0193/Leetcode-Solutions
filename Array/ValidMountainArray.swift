/**
 * Question Link: https://leetcode.com/problems/valid-mountain-array/
 * Primary idea: Traverse from front and end and check for single peak.
 */

class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        var upHill = 0
        var downHill = arr.count - 1
        let eleCount = arr.count
        if (arr.count < 3) {
            return false
        }
        
        while (upHill + 1 < eleCount && arr[upHill] < arr[upHill+1]) {
            upHill = upHill + 1
        }
        while (downHill > 0 && arr[downHill] < arr[downHill-1]) {
            downHill = downHill - 1
        }
        return upHill > 0 && upHill == downHill && downHill < eleCount - 1
    }
}
