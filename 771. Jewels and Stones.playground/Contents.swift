/*
771. Jewels and Stones

 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.
 
 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
 Example 1:
 
 Input: J = "aA", S = "aAAbbbb"
 Output: 3
 
 Example 2:
 
 Input: J = "z", S = "ZZ"
 Output: 0
 
 Note:
 
 S and J will consist of letters and have length at most 50.
 The characters in J are distinct.
*/

import UIKit

class Solution {  // my solution
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        let jewelArray = Array(J)
        var counts = 0
        
        for i in jewelArray {
            counts += S.filter{ $0 == i }.count
        }
        
        print(counts)
        return counts
    }
}
let s = Solution()
s.numJewelsInStones("aBC", "aaBBCDD")


// other solution
class Solution2 {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        return (S.filter{ J.contains($0) }).count
    }
}

let s2 = Solution2()
s2.numJewelsInStones("aB", "AAaaaBBaaCC")
