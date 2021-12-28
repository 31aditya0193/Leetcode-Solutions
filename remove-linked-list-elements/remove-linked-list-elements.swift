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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return head
        }
        var resultHead = head
        var current = head
        while resultHead?.val == val {
            resultHead = resultHead?.next
        }
        
        while (current != nil) {
            if current?.next?.val == val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return resultHead
    }
}