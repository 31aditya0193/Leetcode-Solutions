/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        var current = node
        while current?.next?.next != nil {
            current?.val = (current?.next!.val)!
            current = current?.next
        }
        current?.val = (current?.next!.val)!
        current?.next = nil
    }
}