/*

 283. Move Zeroes
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Example:
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Note:
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.

 */


import UIKit

class Solution {   // 7396 ms    18.8 MB
    func moveZeroes(_ nums: inout [Int]) {
        
        for _ in 0..<nums.count {
            nums.contains(0) ? (nums.remove(at: nums.firstIndex(of: 0)!), nums.append(0)) : nil
        }
    }
}

var b = [0,1,0,3,12]
let a = Solution()
a.moveZeroes(&b)
print(b)

class Solution2 { // 40 ms    19.4 MB
    func moveZeroes(_ nums: inout [Int]) {
        
        let counter = nums.filter { $0 == 0 }.count

        
        nums = nums.filter { $0 != 0 }
        
        for _ in 0..<counter {
            nums.append(0)
        }
        
    }
}

var d = [0,1,0,3,12,0,8]
let c = Solution2()
c.moveZeroes(&d)
print(d)

var e = [0,1,0,3,12,0,8]
print(e.filter { $0 != 0})
