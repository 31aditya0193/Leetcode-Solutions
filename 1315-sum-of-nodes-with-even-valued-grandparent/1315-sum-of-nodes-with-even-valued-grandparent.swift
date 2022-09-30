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
    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
        var sum = 0
        guard let head = root else {
            return sum
        }
        var que: [TreeNode] = [head]
        while que.count > 0 {
            let current = que.removeFirst()
            if current.val % 2 == 0 {
                sum += current.left?.left?.val ?? 0
                sum += current.left?.right?.val ?? 0
                sum += current.right?.left?.val ?? 0
                sum += current.right?.right?.val ?? 0
            }
            if let left = current.left {
                que.append(left)
            }
            if let right = current.right {
                que.append(right)
            }
        }
        return sum
    }
}