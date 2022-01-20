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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root!.left != nil && root!.left!.left == nil && root!.left!.right == nil {
            return root!.left!.val + sumOfLeftLeaves(root!.right)
        } else {
            return sumOfLeftLeaves(root!.left) + sumOfLeftLeaves(root!.right)
        }
    }
}