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
    func reverseList(_ head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil) {
            return head
        }
        var stack : [ListNode] = []
        var current = head
        while current != nil {
            stack.append(current!)
            current = current?.next
        }
        
        let result = stack.popLast()
        current = result
        while stack.count > 0 {
            let nextNode = stack.popLast()
            current?.next = nextNode
            current = current?.next
        }
        current?.next = nil
        return result
    }
}