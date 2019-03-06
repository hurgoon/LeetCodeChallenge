/*
 
 543. Diameter of Binary Tree
 
 Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
 
 Example:
 Given a binary tree
       1
      / \
     2   3
    / \
   4   5
 Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].
 
 Note: The length of path between two nodes is represented by the number of edges between them.

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

let sample = TreeNode(1)
sample.left = TreeNode(2)
sample.right = TreeNode(3)
sample.right?.left = TreeNode(3)
sample.right?.right = TreeNode(3)
sample.left?.left = TreeNode(4)
sample.left?.right = TreeNode(5)
sample.left?.right?.right = TreeNode(6)
sample.left?.right?.right?.left = TreeNode(7)

class Solution {
    var counter = 0
    var rootChecker = true
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        print("step1 counter", "=", counter )
        if root.left != nil && root.right != nil && rootChecker != true {
            counter -= 1
            print(" step2 counter", "=",counter )
        }
        rootChecker = false
        
        if root.left != nil {
            diameterOfBinaryTree(root.left)
            counter += 1
        }
        
        if root.right != nil {
            diameterOfBinaryTree(root.right)
            counter += 1
        }
        print(" final counter", "=", counter )
        return counter
    }
}

let a = Solution()
a.diameterOfBinaryTree(sample)
