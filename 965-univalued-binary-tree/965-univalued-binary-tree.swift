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
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        var leftUniVal: Bool = true
        var rightUniVal: Bool = true
        if root?.left != nil {
            leftUniVal = root!.val == root!.left!.val
        }
        if root?.right != nil {
            rightUniVal = root!.val == root!.right!.val
        }
        return leftUniVal && rightUniVal && isUnivalTree(root?.left) && isUnivalTree(root?.right)
    }
}