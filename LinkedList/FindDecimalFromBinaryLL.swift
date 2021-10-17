/**
 * Question Link: https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
 * Primary idea: use the array length to find the exponent and multiply it while traversing the LL.
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var binaryArray: [Int] = []
        var result: Int = 0
        if head == nil {
            return result
        }
        var ptr = head
        while ptr != nil {
            binaryArray.append(ptr!.val)
            ptr = ptr!.next
        }
        let binCount = binaryArray.count
        var multiplier = 1
        for idx in 0..<binCount {
            let num = binaryArray[binCount - 1 - idx]
            result = result + num *  multiplier
            multiplier = multiplier * 2
        }
        return result
    }
}
