package main

type ListNode struct {
	Val  int
	Next *ListNode
}

func main() {
	node := new(ListNode)
	node.Val = 1

	swapPairs(node)
}

func swapPairs(head *ListNode) *ListNode {
	if head == nil {
		return nil
	}

	pre := new(ListNode)
	pre.Next = head

	one := new(ListNode)
	two := new(ListNode)
	three := new(ListNode)
	four := new(ListNode)

	one = pre
	two = head
	three = head.Next
	if three != nil {
		four = three.Next
	}

	for two != nil {
		swapOnce(one, two, three, four)
		one = two
		two = four
		if four != nil && four.Next != nil {
			three = four.Next
		} else {
			three = nil
		}
		if three != nil && three.Next != nil {
			four = three.Next
		} else {
			four = nil
		}
	}

	return pre.Next
}

func swapOnce(pre *ListNode, left *ListNode, right *ListNode, next *ListNode) {
	if left != nil && right != nil {
		right.Next = left
		left.Next = next
		pre.Next = right
	}
}
