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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var stack : [TreeNode] = [root1!]
        var leaves1 : [Int] = []
        var leaves2 : [Int] = []
        while stack.count > 0 {
            let current = stack.removeLast()
            if current.right != nil {
                stack.append(current.right!)
            }
            if current.left != nil {
                stack.append(current.left!)
            }
            
            if current.left == nil && current.right == nil {
                leaves1.append(current.val)
            }
        }
        stack = [root2!]
        while stack.count > 0 {
            let current = stack.removeLast()
            if current.right != nil {
                stack.append(current.right!)
            }
            if current.left != nil {
                stack.append(current.left!)
            }
            
            if current.left == nil && current.right == nil {
                leaves2.append(current.val)
            }
        }
        return leaves1 == leaves2
    }
}