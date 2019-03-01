/*
 
 538. Convert BST to Greater Tree
 
 Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
 
 Example:
 
 Input: The root of a Binary Search Tree like this:
 5
 /   \
 2     13
 
 Output: The root of a Greater Tree like this:
 18
 /   \
 20     13
 
 */

import Foundation

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

let sample = TreeNode(2)
sample.left = TreeNode(0)
sample.right = TreeNode(3)
sample.left?.left = TreeNode(-4)
sample.left?.right = TreeNode(1)

class Solution {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        
        guard let rootOriginal = root?.val else { return root }
        let rootLeft = root?.left?.val
        let rootRight = root?.right?.val
        
        rootRight != nil ? (root?.val += rootRight!) : nil
        root?.left?.val += (root?.val)!
        
        
        //        print("root.val ", "=",root?.val )
        //        print("root.left.val ", "=",root?.left?.val )
        //        print("root.right.val ", "=",root?.right?.val )
        //        print("root.left.left.val ", "=",root?.left?.left?.val )
        //        print("root.left.right.val ", "=",root?.left?.right?.val )
        
        return root
    }
    
    var sum = 0
    
    func convertBST2(_ root: TreeNode?) -> TreeNode? {
        
        guard let root = root else { return nil }
        
        convertBST(root.right)
        
        sum += root.val
        root.val = sum
        
        convertBST(root.left)
        
        return root
    }
}

let a = Solution()
a.convertBST2(sample)
