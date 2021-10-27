/**
 * Question Link: https://leetcode.com/problems/delete-node-in-a-linked-list/
 * Primary idea: Keep copying next node into current node while you reach the tail. set the current node to nil at the end.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

//  Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func deleteNode(_ node: ListNode?) {
        var temp = node
        var nextNode = node?.next
        while nextNode != nil {
            temp?.val = nextNode!.val
            temp = nextNode
            nextNode = nextNode?.next
        }
        temp?.next = nil
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
sol.deleteNode(three)
var temp: ListNode! = head

while (temp.next != nil) {
    print(temp.val)
    temp = temp.next
}
