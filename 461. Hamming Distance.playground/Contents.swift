/*
 461. Hamming Distance
 
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 2^31.
 
 Example:
 Input: x = 1, y = 4
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 */

let num1 = 93
let num2 = 73

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        let xorString = String(x ^ y, radix:2)
        print(xorString.filter{ "1".contains($0) }.count)
        print(xorString.filter{ "1" == $0 }.count)
        
        return (xorString.enumerated().compactMap{ $0.element == "1" ? $0.element : nil}).count
    }
}
let a = Solution()
a.hammingDistance(num1, num2)


func hammingDistance2 (_ x: Int, _ y: Int) -> Int {
    let val = x ^ y
    print("val ", "=",val )
    
    return val.nonzeroBitCount
}
hammingDistance2(num1, num2)
