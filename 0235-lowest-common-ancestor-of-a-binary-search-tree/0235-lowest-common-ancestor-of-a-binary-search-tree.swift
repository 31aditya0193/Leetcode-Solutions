/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var current = root!
        while true {
            if current.val == p!.val || current.val == q!.val {
                return current
            }
            if current.val < p!.val && current.val < q!.val {
                current = current.right!
            }
            if current.val > p!.val && current.val > q!.val {
                current = current.left!
            }
            if current.val > p!.val && current.val < q!.val || current.val < p!.val && current.val > q!.val {
                return current
            }
        }
    }
}