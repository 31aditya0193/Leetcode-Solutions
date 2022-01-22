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
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var list : [Int] = []
        flatten(root, &list)
        var minm = Int.max
        for idx in 1..<list.count {
            minm = min(list[idx] - list[idx-1], minm)
        }
        return minm
    }
    
    func flatten(_ root: TreeNode?, _ list: inout [Int]) {
        guard let root = root else { return }
        flatten(root.left, &list)
        list.append(root.val)
        flatten(root.right, &list)
    }
}