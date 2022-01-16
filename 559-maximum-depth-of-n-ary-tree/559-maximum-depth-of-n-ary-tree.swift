/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func maxDepth(_ root: Node?) -> Int {
        var depths: [Int] = []
        var maxD = 0
        if root == nil {
            return 0
        }
        if root!.children.count == 0 {
            return 1
        }
        for child in root!.children {
            depths.append(maxDepth(child))
        }
        maxD = depths.max()!
        return 1 + maxD
    }
}