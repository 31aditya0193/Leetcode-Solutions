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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil || list2 == nil {
            return list1
        }
        if list1 == nil {
            return list2
        }
        let result : ListNode? = ListNode(-101)
        var current = result
        var l1 : ListNode? = list1
        var l2 : ListNode? = list2
        while l1 != nil && l2 != nil {
            if l1!.val > l2!.val {
                current?.next = l2
                l2 = l2?.next
            } else {
                current?.next = l1
                l1 = l1?.next
            }
            current = current?.next
        }
        if l1 != nil {
            current?.next = l1
        }
        if l2 != nil {
            current?.next = l2
        }
        return result?.next
    }
}