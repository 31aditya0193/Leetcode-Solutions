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
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        if nums.count == 0 {
            return nil
        }
        if nums.count == 1 {
            return TreeNode(nums[0])
        }
        let node = TreeNode(nums.max()!)
        let indexOfMax = nums.firstIndex(of: nums.max()!)!
        node.left = constructMaximumBinaryTree(Array(nums[..<indexOfMax]))
        node.right = constructMaximumBinaryTree(Array(nums[(indexOfMax+1)...]))
        return node
    }
}