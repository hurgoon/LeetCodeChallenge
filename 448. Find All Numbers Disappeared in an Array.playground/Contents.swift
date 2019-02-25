/*

 448. Find All Numbers Disappeared in an Array
 
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements of [1, n] inclusive that do not appear in this array.
 
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 Example:
 
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [5,6]
 
 */

import UIKit

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {  // fail
        
//        var nums = nums
        
        var disappearedNum: Array<Int> = []
        
        if nums.count == 0 { return disappearedNum }
        else { nums.sorted() }
        
        for i in 1...nums.count {
//            nums.contains(i) ? (nums.filter{ $0 != i }) : disappearedNum.append(i)
            
            if nums.contains(i) {
                nums.filter{ $0 != i }
            } else {
                disappearedNum.append(i)
            }
            
        }
        
        return disappearedNum
    }
    
    func findDisappearedNumbers2(_ nums: [Int]) -> [Int] { // 608 ms    22.7 MB
        
        if nums.count == 0 {
            return []
        }
        
        let compareSet: Set<Int> = Set(1...nums.count)
        let disappearedNum = Array(compareSet.symmetricDifference(nums))
        
        return disappearedNum.sorted()
    }
}

let a = Solution()
a.findDisappearedNumbers([])
a.findDisappearedNumbers2([1,2,3,4,4,4])

//let bb: Set<Int> = [1,2,3,4]
//let cc = [1,3]
//let dd = bb.symmetricDifference(cc)
