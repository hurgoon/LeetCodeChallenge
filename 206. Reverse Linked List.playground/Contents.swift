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
sample.next!.next!.next = ListNode(34)
sample.next!.next!.next!.next = ListNode(5)


class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        guard let headNext = head.next else { return head }
        
        let newHead = reverseList(headNext)
        head.next = nil
        headNext.next = head
        
        print(newHead?.val)
        print(newHead?.next?.val)
        print(newHead?.next?.next?.val)
        print(newHead?.next?.next?.next?.val)
        print(newHead?.next?.next?.next?.next?.val)
        print("===========")
        
        return newHead
    }
}

let a = Solution()
a.reverseList(sample)


