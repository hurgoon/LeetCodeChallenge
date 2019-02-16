/*
 929. Unique Email Addresses
 
 Every email consists of a local name and a domain name, separated by the @ sign.
 For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.
 Besides lowercase letters, these emails may contain '.'s or '+'s.
 
 If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)
 
 If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)
 
 It is possible to use both of these rules at the same time.
 Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?
 
 Example 1:
    Input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
    Output: 2
    Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails
 
 Note :
 1 <= emails[i].length <= 100
 1 <= emails.length <= 100
 Each emails[i] contains exactly one '@' character.
*/

// .은 무시, + 뒤에는 무시

import UIKit

class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {

        var newEmails = Set<String>()  // Set은 element의 중복을 허용하지 않는다

        for email in emails {
            var localName = String(email.split{ $0 == "@" }[0])
            guard let domainName = email.split(separator: "@").last else { return 0}
            
            localName = localName.replacingOccurrences(of: ".", with: "")
            localName.contains("+") ? (localName = String(localName.split{ $0 == "+" }[0])) : (localName = localName)
            
            newEmails.insert("\(localName)@\(domainName))")
        }
        
        print(" newEmails", "=",newEmails )
        return newEmails.count
    }
}
let dd = Solution()
dd.numUniqueEmails(["hur.jinsung@hotmail.com", "hurjin+sung@hotmail.com"])


//let a = "AD..SFA@SDFAS"
//let b = (a.split(separator: "@"))[0]
//let c = a.split { $0 == "@" }
//print("c ", "=", c)
//
//let aa = a.replacingOccurrences(of: ".", with: "")
//
//print(aa)

var email = Set<String>()
email.insert("aa")
email.insert("bb")
email.insert("aa")

print(email)
