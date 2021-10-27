/**
 * Question Link: https://leetcode.com/problems/middle-of-the-linked-list/
 * Primary idea: Use 2 Pointer, one hopping one node at a time, other hops 2.
 * when the fast hopping pointer reaches end, slow hopping pointer points at mid node.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowPtr = head
        var fastPtr = head?.next
        while fastPtr != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        return slowPtr
    }
}
