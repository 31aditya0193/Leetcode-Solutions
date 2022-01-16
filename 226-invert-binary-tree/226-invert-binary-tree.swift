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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root != nil {
            mirrorSubTree(root)
        }
        return root
    }
    
    func mirrorSubTree(_ root: TreeNode?) {
        if root == nil {
            return
        }
        mirrorSubTree(root!.left)
        mirrorSubTree(root!.right)
        var temp: TreeNode? = root!.left
        root!.left = root!.right
        root!.right = temp
    }
}