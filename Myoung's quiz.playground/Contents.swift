import UIKit

class Solution {
    func transformer(_ array: [Int]) -> [String] {

        var spellArray: Array<String> = []
        
        for element in array {
            let numberForTimes = element
            let spellFormatNumber = NumberFormatter.localizedString(from: NSNumber(value: element), number: .spellOut)
            
            for _ in 0..<numberForTimes {
                spellArray.append(spellFormatNumber)
            }
        }
        
        return spellArray
    }
}

let input = Solution()
input.transformer([0, 3, 2, 1])
