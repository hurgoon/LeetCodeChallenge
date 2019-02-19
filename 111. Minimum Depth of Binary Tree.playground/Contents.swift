/*
 111. Minimum Depth of Binary Tree
 
 Given a binary tree, find its minimum depth.
 
 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
 
 Note: A leaf is a node with no children.
 
 Example:
 Given binary tree [3,9,20,null,null,15,7],
 
     3
    / \
   9  20
     /  \
    15   7
 return its minimum depth = 2.

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

let v2 = TreeNode(1)
v2.left = TreeNode(3)

class Solution {
    
    func minDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        let left = minDepth(root?.left)
        let right = minDepth(root?.right)
        
        return 1 + ((left == 0 || right == 0) ? max(left, right) : min(left, right))
    }
}

let a = Solution()
a.minDepth(v2)

