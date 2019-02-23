/*
 226. Invert Binary Tree
 
 Invert a binary tree.
 
 Example:
 
 Input:
      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 
 Output:
      4
    /   \
   7     2
  / \   / \
 9   6 3   1
 
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
v2.right = TreeNode(3)

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
         if root != nil {
            let tempLeft: TreeNode? = root?.left
            let tempRight: TreeNode? = root?.right
            
//            tempLeft != nil ? (root?.right = tempLeft) : (root?.right = nil)
//            tempRight != nil ? (root?.left = tempRight) : (root?.left = nil)
            
            root?.right = tempLeft
            root?.left = tempRight
        }
        
        root?.left = invertTree(root?.left)
        root?.right = invertTree(root?.right)
        
        return root
    }
}

let a = Solution()
a.invertTree(v1)
print(v1.val)
print(v1.left?.val, v1.right?.val)
print(v1.left?.left?.val, v1.left?.right?.val, v1.right?.left?.val, v1.right?.right?.val)

a.invertTree(v2)
print(v2.val)
print(v2.left?.val, v2.right?.val)
