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
    func pairSum(_ head: ListNode?) -> Int {
        var stack: [ListNode] = []
        var slow = head
        var fast = head
        while fast != nil {
            stack.append(slow!)
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        for n in stack {
            print(n.val)
        }
        var max = 0
        var stackCnt = stack.count
        while slow != nil {
            let stackTop = stack[stackCnt-1]
            let currentSum = stackTop.val + slow!.val
            if max < currentSum {
                max = currentSum
            }
            slow = slow?.next
            stackCnt -= 1
        }
        return max
    }
}