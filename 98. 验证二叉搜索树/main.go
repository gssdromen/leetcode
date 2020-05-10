package main

import "math"

type TreeNode struct {
 	Val int
 	Left *TreeNode
 	Right *TreeNode
 }

func main() {

}

func isValidBST(root *TreeNode) bool {
	return isValidHelper(root, math.MinInt64, math.MaxInt64)
}

func isValidHelper(root *TreeNode, left int, right int) bool {
	if root == nil {
		return true
	}
	if root.Val <= left || root.Val >= right {
		return false
	}

	return isValidHelper(root.Left, left, root.Val) && isValidHelper(root.Right, root.Val, right)
}