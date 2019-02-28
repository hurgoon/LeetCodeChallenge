/*

 169. Majority Element
 
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 Example 1:
 Input: [3,2,3]
 Output: 3
 
 Example 2:
 Input: [2,2,1,1,1,2,2]
 Output: 2
 
 */


import UIKit

class Solution {  // 144 ms    21.2 MB
    func majorityElement(_ nums: [Int]) -> Int {
        
        let tuple = nums.map{($0, 1)}
        let elementCounter = Dictionary(tuple, uniquingKeysWith: +)
        let result = elementCounter.max { a, b in a.value < b.value }!
        
        return result.key
    }
}

let a = Solution()
let b = [2,2,1,1,1,2,2]
a.majorityElement(b)

let dic = b.map{($0, 1)}
print("dic ", "=", dic)
let counts = Dictionary(dic, uniquingKeysWith: +)
print("counts ", "=", counts)
let result = counts.max { a, b in a.value < b.value }!
print(" result", "=", result )
result.key
