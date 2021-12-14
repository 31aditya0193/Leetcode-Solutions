/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-list/
 * Primary idea: traverse the array and handle positive and negative separately
 *
 */

// * Definition for singly-linked list.
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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        while (current != nil) {
            if (current?.val == current?.next?.val) {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return head
    }
}

var three2 = ListNode(3)
var three = ListNode(3)
var two = ListNode(2)
var one2 = ListNode(1)
var one1 = ListNode(1)
one1.next = one2
one2.next = two
two.next = three
three.next = three2

var s = Solution()

var temp: ListNode? = s.deleteDuplicates(one1)

while (temp != nil) {
    print((temp?.val)!)
    temp = temp?.next ?? nil
}
