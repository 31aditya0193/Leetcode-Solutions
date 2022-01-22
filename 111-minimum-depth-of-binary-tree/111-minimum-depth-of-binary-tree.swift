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
    func minDepth(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        guard root!.left != nil && root!.right != nil else {
            return max(minDepth(root!.left), minDepth(root!.right)) + 1
        }
        return 1 + min(minDepth(root!.left), minDepth(root!.right))
    }
}