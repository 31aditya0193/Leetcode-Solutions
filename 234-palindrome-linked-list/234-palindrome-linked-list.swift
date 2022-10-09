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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var stack : [ListNode?] = []    //Stack to hold nodes
        var current = head
        
        while (current != nil) {
            stack.append(current)
            current = current?.next     //Stacking the Nodes
        }
        
        current = head
        while let ele = stack.popLast() {
            if ele?.val == current?.val {
                current = current?.next     //Matching nodes from List and Stack (revered list)
            } else {
                return false
            }
        }
        return true
    }
}