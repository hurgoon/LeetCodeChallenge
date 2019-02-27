/*
 
 206. Reverse Linked List
 
 Reverse a singly linked list.
 
 Example:
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 
 Follow up:
 
 A linked list can be reversed either iteratively or recursively. Could you implement both?
 
 */

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

let sample = ListNode(1)
sample.next = ListNode(2)
sample.next!.next = ListNode(3)
sample.next!.next!.next = ListNode(4)
sample.next!.next!.next!.next = ListNode(5)

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
    
        if head == nil {
            return nil
        }
        
        let temp = head
        
        let nextNode =  reverseList(head?.next)
        
        nextNode != nil ? (head = nextNode, head?.next = temp, head?.next?.next = nil) : nil
        
        
        
        return head
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
            guard let head = head else { return nil }
            guard let next = head.next else { return head }
            
            let headNew = reverseList(next)
            next.next = head
            head.next = nil
        
        print("head.val ", "=", head?.val)
        print("head.next1.val ", "=", head?.next?.val)
        print("head.next2.val ", "=", head?.next?.next?.val)
        print("head.next3.val ", "=", head?.next?.next?.next?.val)
        print("head.next4.val ", "=", head?.next?.next?.next?.next?.val)
        
            return headNew
    }
}

let a = Solution()
a.reverseList2(sample)

