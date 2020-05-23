package main

type ListNode struct {
	Val  int
	Next *ListNode
}

func main() {

}

func reverseKGroup(head *ListNode, k int) *ListNode {
	dummy := &ListNode{Val: 0}
	dummy.Next = head

	pre := dummy
	end := dummy

	for end.Next != nil {
		for i := 0; i < k && end != nil; i++ {
			end = end.Next
		}
		if end == nil {
			break
		}

		start := pre.Next
		next := end.Next
		end.Next = nil
		pre.Next = reverseIt(start)
		start.Next = next
		pre = start

		end = pre
	}

	return dummy.Next
}

func reverseIt(head *ListNode) *ListNode {
	pre := &ListNode{}
	curr := head
	for curr != nil {
		next := curr.Next
		curr.Next = pre
		pre = curr
		curr = next
	}
	return pre
}
