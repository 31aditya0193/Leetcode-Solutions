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
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        var queue : [TreeNode] = [root!]
        
        while queue.count > 0 {
            let cnt = queue.count
            var tempValArray : [Int] = []
            for _ in 0..<cnt {
                let current = queue.removeFirst()
                if current.left?.val == x && current.right?.val == y ||
                    current.right?.val == x && current.left?.val == y {
                    return false
                }
                tempValArray.append(current.val)
                if let left = current.left {
                    queue.append(left)
                }
                if let right = current.right {
                    queue.append(right)
                }
                
            }
            if tempValArray.contains(x) && tempValArray.contains(y) {
                return true
            }
        }
        return false
    }
}