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
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        return binarySum(root, 0)
    }
    
    func binarySum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        let val = 2 * sum + root!.val
        if root?.left == nil && root?.right == nil {
            return val
        } else {
            return binarySum(root?.left, val) + binarySum(root?.right, val)
        }
    }
}