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
    func sortList(_ head: ListNode?) -> ListNode? {
        var current = head
        var arr: [Int] = []
        while current != nil {
            arr.append(current!.val)
            current = current?.next
        }
        arr.sort()
        
        current = head
        var idx = 0
        while current != nil {
            current?.val = arr[idx]
            idx += 1
            current = current?.next
        }
        return head
    }
}