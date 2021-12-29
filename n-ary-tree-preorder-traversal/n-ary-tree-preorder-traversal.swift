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
    func preorder(_ root: Node?) -> [Int] {
        var result: [Int] = []      //Empty Array
        if root == nil {
            return result           //Return empty array if node is nil
        }
        result = [root!.val]
        if root?.children.count == 0 {
            return result           //return node value if node has no children
        } else {
            for child in root!.children {
                result = result + preorder(child)       //recurse teach child before otherwise
            }
        }
        return result
    }
}