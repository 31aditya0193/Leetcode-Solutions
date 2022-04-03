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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?, _ carry: Int = 0) -> ListNode? {
        if (l1 == nil && l2 == nil && carry == 0) {
            return nil
        }
        var carry = carry
        var op1 = l1?.val ?? 0
        var op2 = l2?.val ?? 0
        var sum = op1 + op2 + carry
        if sum > 9 {
            sum = sum % 10
            carry = 1
        } else {
            carry = 0
        }
        let result = ListNode(sum)
        result.next = addTwoNumbers(l1?.next, l2?.next, carry)
        return result
    }
}