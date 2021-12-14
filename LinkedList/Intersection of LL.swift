/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-linked-lists/
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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if (headA == nil || headB == nil) {
            return nil
        }
        
        var a : ListNode? = headA
        var b : ListNode? = headB
        
        while !(a === b) {
            a = a == nil ? headA : a?.next
            b = b == nil ? headB : b?.next
        }
        return a
    }
}

var c3 = ListNode(5)
var c2 = ListNode(4, c3)
var c1 = ListNode(8, c2)

var a2 = ListNode(1, c1)
var a1 = ListNode(4, a2)

var b3 = ListNode(1, c1)
var b2 = ListNode(6, b3)
var b1 = ListNode(5, b2)

var sol = Solution()

var temp: ListNode? = sol.getIntersectionNode(a1, b1)

print("intersected at: \(temp?.val)")

//while (temp != nil) {
//    print((temp?.val)!)
//    temp = temp?.next ?? nil
//}
