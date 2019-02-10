/*
 868. Binary Gap
 
 Given a positive integer N, find and return the longest distance between two consecutive 1's in the binary representation of N.
 If there aren't two consecutive 1's, return 0.
 
 Example 1:
 
 Input: 22
 Output: 2
 Explanation:
 22 in binary is 0b10110.
 In the binary representation of 22, there are three ones, and two consecutive pairs of 1's.
 The first consecutive pair of 1's have distance 2.
 The second consecutive pair of 1's have distance 1.
 The answer is the largest of these two distances, which is 2.
 
 Example 2:
 
 Input: 5
 Output: 2
 Explanation:
 5 in binary is 0b101.
 
 Example 3:
 
 Input: 6
 Output: 1
 Explanation:
 6 in binary is 0b110.
 
 Example 4:
 
 Input: 8
 Output: 0
 Explanation:
 8 in binary is 0b1000.
 There aren't any consecutive pairs of 1's in the binary representation of 8, so we return 0.
 
 
 Note:
 
 1 <= N <= 10^9
 */

import UIKit

class Solution {
    func binaryGap(_ N: Int) -> Int {
        
        let binaryArray = Array(String(N, radix: 2))
        var digitArray: Array<Int> = []
        
        for i in 0..<binaryArray.count {
            if binaryArray[i] == "1" {
                digitArray.append(i)
            }
        }
        
        var distance = 0
        var maxDistance = 0
        
        for i in 0..<digitArray.count-1 {
            distance = digitArray[i+1] - digitArray[i]
            
            if maxDistance < distance {
                maxDistance = distance
            }
        }
        return maxDistance
    }
}

let a = Solution()
a.binaryGap(50000)

class Solution2 {
    func binaryGap(_ N: Int) -> Int {
        
        let binaryArray = Array(String(N, radix: 2))
        let digitArray = binaryArray.enumerated().compactMap {
            $0.element == "1" ? $0.offset : nil
        }
        
        var distance = 0
        var maxDistance = 0
        
        for i in 0..<digitArray.count-1 {
            distance = digitArray[i+1] - digitArray[i]
            
            maxDistance = maxDistance < distance ? distance : maxDistance
        }
        return maxDistance
    }
}

let b = Solution2()
b.binaryGap(50000)
