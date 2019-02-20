/*
 804. Unique Morse Code Words
 
 International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.
 
 For convenience, the full table for the 26 letters of the English alphabet is given below:
 [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
 Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cba" can be written as "-.-..--...", (which is the concatenation "-.-." + "-..." + ".-"). We'll call such a concatenation, the transformation of a word.
 
 Return the number of different transformations among all words we have.
 
 Example:
 Input: words = ["gin", "zen", "gig", "msg"]
 Output: 2
 Explanation:
 The transformation of each word is:
 "gin" -> "--...-."
 "zen" -> "--...-."
 "gig" -> "--...--."
 "msg" -> "--...--."
 
 There are 2 different transformations, "--...-." and "--...--.".
 
 Note:
 
 The length of words will be at most 100.
 Each words[i] will have length in range [1, 12].
 words[i] will only consist of lowercase letters.
 */


import UIKit

class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        
        let morseCodeArray = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        let alphabets = "abcdefghijklmnopqrstuvwxyz"
        let alphabetsArray = Array(alphabets)
        var morseSet: Set<String> = []
        
        for word in words {
            var morseWord: String = ""
            
            for character in word {
                morseWord += morseCodeArray[alphabetsArray.index { $0 == character }!]
            }
            morseSet.insert(morseWord)
        }
        return morseSet.count
    }
}

let a = Solution()
a.uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])

class Solution2 {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        
        let morseCodeArray = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var morseSet: Set<String> = []
        
        for word in words {
            var morseWord: String = ""

            for character in word {
                morseWord += morseCodeArray[Int(character.unicodeScalars.first!.value) - 97]
            }
            
            morseSet.insert(morseWord)
        }
        return morseSet.count
    }
}

let b = Solution2()
b.uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])


//items.enumerated().compactMap { $0.element == "A" ? $0.offset : nil })
