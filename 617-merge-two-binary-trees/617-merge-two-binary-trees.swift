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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        switch (root1?.val, root2?.val) {
            case (.some(let val1), .some(let val2)):
                return TreeNode(val1 + val2, 
                                mergeTrees(root1?.left, root2?.left),
                                mergeTrees(root1?.right, root2?.right))
            case (.some(let _), .none):
                return root1
            case (.none, .some(let _)):
                return root2
            case (.none, .none):
                return nil
        }
    }
}
