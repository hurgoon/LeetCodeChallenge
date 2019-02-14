/*
 617. Merge Two Binary Trees

 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 
 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
 
 Example 1:
 
 Input:
 Tree 1                     Tree 2
     1                         2
    / \                       / \
   3   2                     1   3
  /                           \   \
 5                             4   7
 
 Output:
 Merged tree:
     3
    / \
   4   5
  / \   \
 5   4   7
 
 Note: The merging process must start from the root nodes of both trees.
 */

/*
 * Definition for a binary tree node.
 */

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

let v2 = TreeNode(2)
v2.left = TreeNode(1)
v2.left = TreeNode(3)
v2.left?.right = TreeNode(4)
v2.right?.right = TreeNode(7)

class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        if t1 == nil && t2 == nil {
            return nil
        }
        
        let t3 = TreeNode((t1?.val ?? 0) + (t2?.val ?? 0))
        
        t3.left = self.mergeTrees(t1?.left, t2?.left)
        t3.right = self.mergeTrees(t1?.right, t2?.right)

        return t3
    }
}

let c = Solution()
c.mergeTrees(v1, v2)

