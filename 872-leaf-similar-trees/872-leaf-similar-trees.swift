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
        let leaves1 : [Int] = getLeaves(root1)
        let leaves2 : [Int] = getLeaves(root2)
        return leaves1 == leaves2
    }
    
    func getLeaves(_ root: TreeNode?) -> [Int] {
        var stack : [TreeNode] = [root!]
        var leaves : [Int] = []
        while stack.count > 0 {
            let current = stack.removeLast()
            if current.right != nil {
                stack.append(current.right!)
            }
            if current.left != nil {
                stack.append(current.left!)
            }
            
            if current.left == nil && current.right == nil {
                leaves.append(current.val)
            }
        }
        return leaves
    }
}