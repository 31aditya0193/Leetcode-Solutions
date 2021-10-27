/**
 * Question Link: https://leetcode.com/problems/reverse-linked-list/
 * Primary idea: Add Nodes to a stack and then realign their pointers in reverse order.
 *
 */

//  Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() {
        self.val = 0;
        self.next = nil;
    }
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        if head?.next == nil {
            return head
        }
        var stack: [ListNode] = []
        var temp = head
        while (temp != nil) {
            stack.append(temp!)
            temp = temp?.next
        }
        let result: ListNode = stack.last!
        var current: ListNode? = result
        var isFirst = true
        for node in stack.reversed() {
            if isFirst {
                isFirst.toggle()
            } else {
                current?.next = node
                current = node
            }
        }
        current?.next = nil
        return result
    }
}

var head = ListNode(1)
var two = ListNode(2)
var three = ListNode(3)
var four = ListNode(4)
var five = ListNode(5)
var six = ListNode(6)

head.next = two
two.next = three
three.next = four
four.next = five
five.next = six

var sol = Solution()
var temp: ListNode? = sol.reverseList(head)

while (temp != nil) {
    print((temp?.val)!)
    temp = temp?.next
}
