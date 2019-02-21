/*
 
 136. Single Number
 
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 Example 1:
 Input: [2,2,1]
 Output: 1
 
 Example 2:
 Input: [4,1,2,1,2]
 Output: 4
 
 */

import UIKit

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {

        var answer = 0
        
        for num in nums {
            answer ^= num
        }
        
        return answer
    }
}

let a = Solution()
a.singleNumber([2,2,3,3,4])

Int("1010", radix: 2)
String(2, radix: 2)

0^2^2^3^3^4
0^4
