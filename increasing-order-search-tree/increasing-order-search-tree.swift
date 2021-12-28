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
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        return flattenToLL(root)
    }
    
    func flattenToLL(_ node: TreeNode?) -> TreeNode? {
        let left = node?.left != nil ? flattenToLL(node?.left) : nil
        let right = node?.right != nil ? flattenToLL(node?.right) : nil
        
        let centre = TreeNode(node!.val, nil, right)
        if left == nil {
            return centre
        }
        var ctr: TreeNode? = left
        while (ctr?.right != nil) {
            ctr = ctr?.right
        }
        ctr?.right = centre
        return left
    }
}