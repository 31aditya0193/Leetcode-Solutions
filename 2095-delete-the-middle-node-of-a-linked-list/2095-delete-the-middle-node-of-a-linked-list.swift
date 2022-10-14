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
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else {
            return nil
        }
        var slowPtr = head
        var fastPtr = head?.next?.next
        while fastPtr?.next != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        slowPtr?.next = slowPtr?.next?.next
        return head
    }
}