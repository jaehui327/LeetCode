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
    var result = 0
    
    func preorder(_ node: TreeNode?, _ val: Int) {
        if node != nil {
            let num = (val << 1) | node!.val
            if node?.left == nil, node?.right == nil {
                result += num
            }
            preorder(node?.left, num)
            preorder(node?.right, num)
        }
    }
    
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        preorder(root, 0)
        return result
    }
}
