/*

104. Maximum Depth of Binary Tree

 Given a binary tree, find its maximum depth.
 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 
 Note: A leaf is a node with no children.

 Example:
 Given binary tree [3,9,20,null,null,15,7],
 
       3
      / \
     9  20
       /  \
      15   7
 return its depth = 3.
 
 */


import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

let v1 = TreeNode(1)
v1.left = TreeNode(3)
v1.right = TreeNode(2)
v1.left?.left = TreeNode(5)

class Solution {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        
        return 1 + max(left, right)
    }
}

let a = Solution()
a.maxDepth(v1)
