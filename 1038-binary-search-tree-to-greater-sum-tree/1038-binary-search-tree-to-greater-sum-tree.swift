/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var stack : [TreeNode] = []
    func stackTree(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        if let leftChild = root.left {
            stackTree(leftChild)
        }
        stack.append(root)
        if let rightChild = root.right {
            stackTree(rightChild)
        }
    }
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        stackTree(root)
        var sumTillNow = 0
        for node in stack.reversed() {
            sumTillNow += node.val
            node.val = sumTillNow
        }
        return root
    }
}