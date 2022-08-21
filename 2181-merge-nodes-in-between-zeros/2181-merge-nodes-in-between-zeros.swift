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
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        var itr = head
        while itr.next != nil {
            if itr.next?.val != 0 {
                itr.val += Int(itr.next!.val)
                itr.next = itr.next?.next
            } else {
                if itr.next?.next != nil {
                    itr = itr.next!
                } else {
                    itr.next = nil
                }
            }
        }
        return head
    }
}