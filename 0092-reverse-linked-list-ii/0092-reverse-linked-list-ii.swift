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
        var current = head
        var ptr = 1
        var stack: [Int] = []
        while ptr < left {
            current = current?.next
            ptr += 1
        }
        while ptr >= left && ptr <= right {
            stack.append(current!.val)
            current = current?.next
            ptr += 1
        }
        current = head
        ptr = 1
        while ptr < left {
            current = current?.next
            ptr += 1
        }
        while ptr >= left && ptr <= right {
            current?.val = stack.removeLast()
            current = current?.next
            ptr += 1
        }
        return head
    }
}