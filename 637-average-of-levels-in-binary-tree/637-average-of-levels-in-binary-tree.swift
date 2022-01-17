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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var result : [Double] = []
        var queue : [TreeNode] = [root!]
        while queue.count > 0 {
            var sum : Int = 0
            let cnt = queue.count
            for _ in 0..<queue.count {
                let current = queue.removeFirst()
                sum += current.val
                if let left = current.left {
                    queue.append(left)
                }
                if let right = current.right {
                    queue.append(right)
                }
            }
            let avg = Double(sum) / Double(cnt)
            result.append(avg)
        }
        
        return result
    }
}