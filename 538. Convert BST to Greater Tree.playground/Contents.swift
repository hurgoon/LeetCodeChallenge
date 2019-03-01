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
sample.left = TreeNode(0)
sample.right = TreeNode(4)
sample.left?.left = TreeNode(-2)
sample.right?.left = TreeNode(3)

class Solution { // 7992 ms    19.8 MB
    
    var valArray: [Int] = [] // make an array for all node value
    
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil } // root must have value or return nil
        
        valArray.append(root.val)
        
        convertBST(root.right) // right side is bigger(or nil) then root value
        convertBST(root.left)
        
        let biggerThanRootValue = valArray.filter{ $0 > root.val } // only left bigger value
        
        for i in biggerThanRootValue {
            root.val += i
        }
    
        return root
    }
}

let a = Solution()
a.convertBST(sample)
