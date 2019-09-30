//Question Link: https://leetcode.com/problems/add-two-numbers/


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var prev = ListNode(0)
        let head = prev
        var carry = 0
        
        while l1 != nil || l2 != nil || carry != 0 {
            let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            carry = sum > 9 ? 1 : 0
            prev.next = ListNode(0)
            prev.next?.val = sum%10
            prev = prev.next!
            l1 = l1?.next
            l2 = l2?.next
        }
        return head.next
    }
}
