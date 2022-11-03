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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var idx = 0
        let dummy: ListNode? = ListNode(0, head)
        var previous = dummy
        
        while idx < left - 1 {
            previous = previous?.next
            idx += 1
        }

        let current: ListNode? = previous?.next
        var nextToCurrent: ListNode? = current?.next
        idx = 0
        while idx < right - left {
            current?.next = nextToCurrent?.next;
            nextToCurrent?.next = previous?.next;
            previous?.next = nextToCurrent;
            nextToCurrent = current?.next;
            idx += 1
        }
        return dummy!.next
    }
}